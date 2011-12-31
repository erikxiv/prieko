include ActionView::Helpers::NumberHelper

class DashboardController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @dashboard = {
      :verification_count => current_user.verifications.count(),
      :total_income => number_to_currency(current_user.verifications.sum(:amount, :conditions => "amount > 0"), :delimiter => " ", :unit => "kr", :format => "%n %u", :separator => ","),
      :total_expenditure => number_to_currency(-current_user.verifications.sum(:amount, :conditions => "amount < 0"), :delimiter => " ", :unit => "kr", :format => "%n %u", :separator => ","),
      :last_date => current_user.verifications.maximum(:verification_date),
      :first_date => current_user.verifications.minimum(:verification_date),
    }
  end

end
