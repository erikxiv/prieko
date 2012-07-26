class SpaController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

end
