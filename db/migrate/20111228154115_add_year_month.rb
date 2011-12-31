class AddYearMonth < ActiveRecord::Migration
  def up
    change_table :verifications do |t|
      t.integer :year
      t.integer :month
    end
    Verification.reset_column_information
    Verification.find(:all).each do |p|
      p.update_attribute :year, p.verification_date.year
      p.update_attribute :month, p.verification_date.month
    end
  end

  def down
    remove_column :verifications, :year
    remove_column :verifications, :month
  end
end
