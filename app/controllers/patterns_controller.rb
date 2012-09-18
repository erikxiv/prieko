class PatternsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /patterns.json
  def index
    @patterns = current_user.patterns.find(:all, :order => :pattern)

    respond_to do |format|
      format.json { render json: @patterns }
    end
  end
  
  # GET /patterns/1.json
  def show
    @pattern = current_user.patterns.find(params[:id])

    respond_to do |format|
      format.json { render json: @pattern }
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

  # POST /patterns.json
  def create
        # Check for existing pattern before creating a new one
        @pattern = current_user.patterns.where(:pattern => params[:pattern]).first()
        if @pattern
          @pattern.category = params[:category]
        else
          @pattern = current_user.patterns.new(:pattern => params[:pattern], :category => params[:category])
        end

        respond_to do |format|
          if @pattern.save
            # Apply pattern to existing verifications
            apply_pattern(@pattern)
            format.json { render json: @pattern, status: :created, location: @pattern }
          else
            format.json { render json: @pattern.errors, status: :unprocessable_entity }
          end
        end
  end

  # PUT /patterns/1.json
  def update
    @pattern = current_user.patterns.find(params[:id])

    respond_to do |format|
      if @pattern.update_attributes(:category => params[:category])
        apply_pattern(@pattern)
        format.json { head :ok }
      else
        format.json { render json: @pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patterns/1.json
  def destroy
    @pattern = current_user.patterns.find(params[:id])
    @pattern.destroy

    respond_to do |format|
      format.json { head :ok }
    end
  end
end
