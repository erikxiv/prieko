# encoding: UTF-8

class CategoriesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    # Get distinct options
    @categories = current_user.verifications.sum(:amount, :group => 'category', :order => 'category').keys

    respond_to do |format|
      format.json { render json: @categories }
    end
  end

end
