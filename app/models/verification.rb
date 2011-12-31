class Verification < ActiveRecord::Base
  validates :raw, :verification_date, :bank, :amount, :user_id, :presence => true
  validates :amount, :numericality => true
  
  # Associations
  belongs_to :user
end
