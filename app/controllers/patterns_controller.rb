=begin
  Actions:
  - index
    List all patterns
  - show
    Show a single pattern
  - new
    Show a form to create a new pattern
  - edit
    Show a form to edit a single pattern
  - create
    Create a new pattern
  - update
    Update a single patern
  - destroy
    Delete a single pattern
  - categorize
    [No post] Show a form displaying the first uncategorized verification with options to categorize or create pattern
    [Post] Categorize verification OR create pattern (and categorize several verifications)
  - suggest
    [No post] Show a list of suggested patterns to create
    [Post] Create several patterns (and categorize several verifications)
=end
class PatternsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /patterns
  # GET /patterns.json
  def index
    @patterns = current_user.patterns.find(:all, :order => :pattern)
    @suggested = PatternsHelper::get_suggested_patterns(current_user)
    if @suggested.count > 0
      flash.now[:notice] = "<a href=\"" + url_for(:action => "suggest") + "\">There are " + @suggested.count.to_s + " suggested pattern(s) for you</a>"
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patterns }
    end
  end
  
  def suggest
    if request.method == "GET"
      @suggested = PatternsHelper::get_suggested_patterns(current_user)

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @patterns }
      end
    else
      checked = params[:suggested] ? params[:suggested][0] : {}
      checked.each do |idx, val|
        x = val.split("|")
        create_and_apply_pattern(x[0], x[1])
      end
      # Save suggested patterns and go back to pattern listing
      redirect_to patterns_path
    end
  end

  # GET /patterns/1
  # GET /patterns/1.json
  def show
    @pattern = current_user.patterns.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pattern }
    end
  end

  def categorize
    if params[:pattern].nil?
      # Get next verification to categorize
      @descriptions = current_user.verifications.minimum(:id, :group => 'description', :conditions => 'category is null')
      @categories = current_user.verifications.minimum(:id, :group => 'category', :conditions => 'category is not null', :order => :category).keys
      # Redirect to dashboard if no verifications need categorizing
      if @descriptions.length == 0
        flash[:notice] = "All verifications are categorized"
        redirect_to "/"
        return
      end
      @verification = current_user.verifications.find(@descriptions[@descriptions.keys[0]])

      respond_to do |format|
        format.html { render action: "categorize" }
        format.json { head :ok }
      end
    else
      # Save categorization and continue onwards
      pattern = params[:pattern]
      category = params[:new_category].strip.length > 0 ? params[:new_category] : params[:category]
      # Check if a pattern should be created or not
      if params[:save] == "save"
        @pattern = create_and_apply_pattern(pattern, category)
      else
        # Update single verification
        @verification = current_user.verifications.find(params["vid"])
        @verification.category = category
        @verification.save
      end
      
      # redirect back to categorization page
      respond_to do |format|
        format.html { redirect_to action: "categorize" }
        format.json { head :ok }
      end
    end
  end
  
  def apply_pattern(pattern)
    # Update matching verifications. Don't update manual categorizations
    current_user.verifications.update_all({:category => pattern.category, :pattern_id => pattern.id}, ["description = ? AND (category IS NULL OR pattern_id IS NOT NULL)", pattern.pattern, ])  
  end
  def create_and_apply_pattern(pattern, category)
    p = current_user.patterns.create
    p.pattern = pattern
    p.category = category
    p.save
    apply_pattern(p)
    return p
  end

  # GET /patterns/new
  # GET /patterns/new.json
  def new
    @pattern = current_user.patterns.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pattern }
    end
  end

  # GET /patterns/1/edit
  def edit
    @pattern = current_user.patterns.find(params[:id])
  end

  # POST /patterns
  # POST /patterns.json
  def create
      # Apply suggested patterns
      if params[:suggested]
        render action: "index"
      else  
        # Standard create
        @pattern = current_user.patterns.new(params[:pattern])
        apply_pattern(@pattern)

        respond_to do |format|
          if @pattern.save
            format.html { redirect_to @pattern, notice: 'Pattern was successfully created.' }
            format.json { render json: @pattern, status: :created, location: @pattern }
          else
            format.html { render action: "new" }
            format.json { render json: @pattern.errors, status: :unprocessable_entity }
          end
        end
      end
  end

  # PUT /patterns/1
  # PUT /patterns/1.json
  def update
    @pattern = current_user.patterns.find(params[:id])

    respond_to do |format|
      if @pattern.update_attributes(params[:pattern])
        apply_pattern(@pattern)
        format.html { redirect_to @pattern, notice: 'Pattern was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patterns/1
  # DELETE /patterns/1.json
  def destroy
    @pattern = current_user.patterns.find(params[:id])
    @pattern.destroy

    respond_to do |format|
      format.html { redirect_to patterns_url }
      format.json { head :ok }
    end
  end
end
