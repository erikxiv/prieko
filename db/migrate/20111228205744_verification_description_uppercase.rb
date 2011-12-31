class VerificationDescriptionUppercase < ActiveRecord::Migration
  def up
    Verification.find(:all).each do |p|
      p.update_attribute :description, UnicodeUtils.upcase(p.description)
    end
  end

  def down
  end
end
