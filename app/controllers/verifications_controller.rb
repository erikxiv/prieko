# encoding: UTF-8
require "date"
require "csv"
=begin
  Actions:
  - index
    List verifications. Accepts search parameters
  - show
    Show one verification. Not really required, use edit instead?
  - new
    Show a form to create a single new verification
  - edit
    Show a form to edit a single verification (only category?)
  - create
    Create a new verification then redirect to index
  - update
    Update a single verification then redirect to index
  - destroy
    Delete a single verification then redirect to index
  - import
    [No post] Show a form to import several new verifications
    [post] Create several new verificiations then redirect to index
  - report
    Show a tabular aggregation of verifications (category vs month). Accepts year as input.
=end
class VerificationsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /verifications
  # GET /verifications.json
  def index
    # Setup default values (LastYear)
    from_date = (Date.today << 12) + 1
    to_date = Date.today

    # Apply parameters
    if params[:DateRange]
      if params[:DateRange] == "LastMonth"
        from_date = (Date.today << 1) + 1
      elsif params[:DateRange] == "LastYear"
        # default values
      end
    elsif params[:Year]
      if params[:Month]
        from_date = Date.new(params[:Year].to_i, params[:Month].to_i, 1)
        to_date = Date.new(params[:Year].to_i, params[:Month].to_i, days_in_month(from_date.month, from_date.year))
      else
        from_date = Date.new(params[:Year].to_i, 1, 1)
        to_date = Date.new(params[:Year].to_i, 12, 31)
      end
    else
      # Show all
      from_date = Date.new(1,1,1)
    end

    # Get distinct options
    @years = current_user.verifications.sum(:amount, :group => 'year', :order => 'year DESC').keys
    @categories = current_user.verifications.sum(:amount, :group => 'category', :order => 'category ASC').keys
    @category = params[:Category] || "All"
    # Build conditions
    conditions = " AND verification_date >= :from_date AND verification_date <= :to_date"
    parameters = { :from_date => from_date, :to_date => to_date }
    if @category != "All"
      if @category == "" || @category == "Uncategorized"
        conditions += " AND category is null"
      else
        conditions += " AND category=:category"
        parameters[:category] = @category
      end
    end
    if params[:description]
        conditions += " AND description=:description"
        parameters[:description] = params[:description]
    end
    conditions.sub!(/^ AND/, "")
    @verifications = current_user.verifications.where(conditions, parameters).order("verification_date DESC, description")
    @cu = current_user
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @verifications }
      format.csv { render csv: @verifications }
    end
  end

  # GET /verifications/1
  # GET /verifications/1.json
  def show
    @verification = current_user.verifications.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @verification }
    end
  end

  # GET /import
  def import
    if params[:import] != nil
      # Import verifications
      @import = params[:import]
      verifications=[]
      @errors =""
      params[:import].lines.reject{|x| x.length == 0}.each do |line|
        parsed = VerificationsHelper::SebImporter.parse(line)
        if parsed.kind_of?(String)
          @errors=parsed
        else
          verifications.push(current_user.verifications.create(parsed))
        end
      end
      if @errors.length <= 0
        # Get patterns
        @patterns = current_user.patterns.all
        verifications.each do |s|
          # Check patterns for match if no category supplied
          if ! s.category
            match = @patterns.reject{|p| p.pattern.casecmp(s.description) != 0}.first
            s.category = match ? match.category : nil
            s.pattern_id = match ? match.id : nil
          end
          s.save
        end
      end
      respond_to do |format|
        if @errors.length > 0
          format.html { render action: "import" }
        else
          format.html { redirect_to action: "index" }
        end        
      end
    else
      @verification = current_user.verifications.create
    end
  end

  # GET /verifications/new
  # GET /verifications/new.json
  def new
    @verification = current_user.verifications.create

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @verification }
    end
  end

  # GET /verifications/1/edit
  def edit
    @verification = current_user.verifications.find(params[:id])
  end

  # POST /verifications
  # POST /verifications.json
  def create
      # Create a single verification
      @verification = current_user.verifications.create(params[:verification])
  
      respond_to do |format|
        if @verification.save
          format.html { redirect_to @verification, notice: 'Verification was successfully created.' }
          format.json { render json: @verification, status: :created, location: @verification }
        else
          format.html { render action: "new" }
          format.json { render json: @verification.errors, status: :unprocessable_entity }
        end
      end
  end

  # PUT /verifications/1
  # PUT /verifications/1.json
  def update
    @verification = current_user.verifications.find(params[:id])
    logger.debug("Updating ver " + @verification.id.to_s)
    u = {}
    params.each do |p,v|
      if p=="category" || p=="pattern_id"
        u[p] = v
      end
    end
    logger.debug("Updating ver - " + u.to_yaml)
    respond_to do |format|
      if @verification.update_attributes(u)
        logger.debug("Updating ver " + @verification.id.to_s + " OK")
        format.html { redirect_to @verification, notice: 'Verification was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verifications/1
  # DELETE /verifications/1.json
  def destroy
    @verification = current_user.verifications.find(params[:id])
    @verification.destroy

    respond_to do |format|
      format.html { redirect_to verifications_url }
      format.json { head :ok }
    end
  end

  COMMON_YEAR_DAYS_IN_MONTH = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  def days_in_month(month, year = Time.now.year)
     return 29 if month == 2 && Date.gregorian_leap?(year)
     COMMON_YEAR_DAYS_IN_MONTH[month]
  end

  def pivot
    # Setup default values (LastYear)
    pivot_on = :month # month or day
    go_back = 11 # one year
    from_date = Date.today

    # Apply parameters
    if params[:DateRange]
      if params[:DateRange] == "LastMonth"
        pivot_on = :day
        go_back = (from_date-(from_date << 1)).to_i-1
      elsif params[:DateRange] == "LastYear"
        pivot_on = :month
        go_back = 11
      end
    elsif params[:Year]
      from_date = Date.new(params[:Year].to_i, params[:Month] ? params[:Month].to_i : 12, 1)
      if params[:Month]
        pivot_on = :day
        dim = days_in_month(from_date.month, from_date.year)
        from_date = from_date + dim-1
        go_back = dim-1
      else
        pivot_on = :month
        go_back = 11
      end
    else
      # Show yearly stats      
      pivot_on = :year
      go_back = Date.today.year - current_user.verifications.sum(:amount, :group => 'year', :order => 'year DESC').keys.min
    end
    
    @report = PivotTable::PivotTable.new(pivot_on)
    last_month = @year.to_s == Date.today.year.to_s ? Date.today.month : 12
    go_back.downto(0) do |step|
      if params[:Category]
        if pivot_on == :year
          period = from_date << step*12
          @report.add_column(period.year, current_user.verifications.sum(:amount, :conditions => ["year=? AND category=?", period.year, params[:Category]], :group => 'description'))
        elsif pivot_on == :day
          period = from_date - step
          @report.add_column(period.day, current_user.verifications.sum(:amount, :conditions => ["verification_date=? AND category=?", period, params[:Category]], :group => 'description'))
        else #month
          period = from_date << step
          @report.add_column(period.month, current_user.verifications.sum(:amount, :conditions => ["month=? and year=? AND category=?", period.month, period.year, params[:Category]], :group => 'description'))
        end
      else
        if pivot_on == :year
          period = from_date << step*12
          @report.add_column(period.year, current_user.verifications.sum(:amount, :conditions => "year=#{period.year}", :group => 'category'))
        elsif pivot_on == :day
          period = from_date - step
          @report.add_column(period.day, current_user.verifications.sum(:amount, :conditions => "verification_date='#{period.to_s}'", :group => 'category'))
        else #month
          period = from_date << step
          @report.add_column(period.month, current_user.verifications.sum(:amount, :conditions => "month=#{period.month} and year=#{period.year}", :group => 'category'))
        end
      end
    end
    @report.sort_rows!
    
    respond_to do |format|
      format.json { render :json => @report.toJSON() }
    end
  end    
  
  def report
    @years = current_user.verifications.sum(:amount, :group => 'year', :order => 'year DESC').keys
    @year = params[:year] 
    @year ||= @years.length > 0 ? @years.max.to_s : Date.today.year
    @report = PivotTable::PivotTable.new
    last_month = @year.to_s == Date.today.year.to_s ? Date.today.month : 12
    (1..last_month).each do |month|
      @report.add_column(month, current_user.verifications.sum(:amount, :conditions => "month=#{month} and year=#{@year}", :group => 'category'))
    end
    @report.sort_rows!

    respond_to do |format|
      format.html { render action: "report" }
      format.json { head :ok }
    end
  end
  
end
