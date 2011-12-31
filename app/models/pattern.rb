class Pattern < ActiveRecord::Base
  validates :pattern, :category, :user_id, :presence => true

  # Associations
  belongs_to :user
end
