require "date"
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
    # Get distinct options
    @years = current_user.verifications.sum(:amount, :group => 'year', :order => 'year DESC').keys
    @year = params[:year]
    @year ||= @years.length > 0 ? @years.max.to_s : Date.today.year
    @categories = current_user.verifications.sum(:amount, :group => 'category', :order => 'category').keys
    @category = params[:category] || "All"
    # Build conditions
    conditions = ""
    parameters = {}
    if @year != "All"
      conditions += " AND year=:year"
      parameters[:year] = @year
    end
    if @category != "All"
      if @category == ""
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
            match = @patterns.reject{|p| p.pattern != s.description}.first
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

    respond_to do |format|
      if @verification.update_attributes(params[:verification])
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
  
  def report
    @years = current_user.verifications.sum(:amount, :group => 'year', :order => 'year DESC').keys
    @year = params[:year] 
    @year ||= @years.length > 0 ? @years.max.to_s : Date.today.year
    @report = PivotTable::PivotTable.new
    (1..12).each do |month|
      @report.add_column(month, current_user.verifications.sum(:amount, :conditions => "month=#{month} and year=#{@year}", :group => 'category'))
    end
    @report.sort_rows!

    respond_to do |format|
      format.html { render action: "report" }
      format.json { head :ok }
    end
  end
  
end
