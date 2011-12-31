include ActionView::Helpers::NumberHelper

class DashboardController < ApplicationController
  before_filter :authenticate_user!
  
  def cformat(s)
    number_to_currency(s, :precision => 0, :delimiter => " ", :unit => "kr", :format => "%n %u", :separator => ",")
  end
  
  def index
    @dashboard = {
      :current_balance => (current_user.verifications.last ? cformat(current_user.verifications.last.balance) : 0),
      :verification_count => current_user.verifications.count(),
      :total_income => cformat(current_user.verifications.sum(:amount, :conditions => "amount > 0")),
      :total_expenditure => cformat(current_user.verifications.sum(:amount, :conditions => "amount < 0")),
      :last_date => current_user.verifications.maximum(:verification_date),
      :first_date => current_user.verifications.minimum(:verification_date),
    }
  end

end
