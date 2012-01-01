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
  
  def create_and_apply_pattern(pattern, category)
    p = current_user.patterns.create
    p.pattern = pattern
    p.category = category
    p.save
    # Update matching verifications
    current_user.verifications.update_all({:category => category, :pattern_id => p.id}, ["description = ?", pattern])  
    return p
  end

  # GET /patterns/new
  # GET /patterns/new.json
  def new
    @pattern = current_user.patterns.create

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pattern }
    end
  end

  # GET /patterns/1/edit
  def edit
    @pattern = current_user.patterns.find(params[:id])
  end

  def validate_import_manual(line)
    return line =~ /\s*\S+\s*\t\s*\S+\s*/
  end

  def validate_import(line)
    return line =~ /\s*\S+\s*\t\s*\S+\s*/
  end

  def import_manual
    if params[:import_manual] != nil
      # Import manual categorizations
      @import_manual = params[:import_manual]

      # Get all non-validating lines
      @bad_lines = params[:import_manual].lines.reject{|x| x.strip.length == 0}.reject{|x| validate_import_manual(x)}

      # Return if bad lines
      if @bad_lines.length > 0
        render action: "import_manual"
        return
      end

      # For each (correct) line, update verification
      params[:import_manual].lines.reject{|x| x.strip.length == 0}.each do |line|
        words = line.split("\t")
        vid = words[0].strip
        cat = words[1].strip
        verification = current_user.verifications.where(
        "verification_id = :verification_id",
        { :verification_id => vid }
        ).first
        if verification
          verification.category = cat
          verification.save
        else
            @bad_lines.push("Couldn't find verification with id: " + vid.to_s)
        end
      end
      respond_to do |format|
        if @bad_lines.length > 0
          format.html { render action: "import_manual" }
        else
          format.html { redirect_to "/" }
        end
      end
    else
      respond_to do |format|
        format.html { render action: "import_manual" }
      end
    end
  end

  def import
    if params[:import] != nil
      # Import manual categorizations
      @import = params[:import]

      # Get all non-validating lines
      @bad_lines = params[:import].lines.reject{|x| x.strip.length == 0}.reject{|x| validate_import(x)}

      # Return if bad lines
      if @bad_lines.length > 0
        render action: "import"
        return
      end

      # For each (correct) line, create pattern and update verifications
      params[:import].lines.reject{|x| x.strip.length == 0}.each do |line|
        words = line.split("\t")
        pattern = words[0].strip
        cat = words[1].strip
        create_and_apply_pattern(pattern, cat)
      end
      
      # respond
      respond_to do |format|
        if @bad_lines.length > 0
          format.html { render action: "import" }
        else
          format.html { redirect_to "/" }
        end
      end
    else
      respond_to do |format|
        format.html { render action: "import" }
      end
    end
  end

  # POST /patterns
  # POST /patterns.json
  def create
      # Apply suggested patterns
      if params[:suggested]
        render action: "index"
      else  
        # Standard create
        @pattern = current_user.patterns.create(params[:pattern])

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
