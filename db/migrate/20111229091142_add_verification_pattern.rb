class AddVerificationPattern < ActiveRecord::Migration
  def up
    change_table :verifications do |t|
      t.integer :pattern_id
    end
    Verification.reset_column_information
  end

  def down
    remove_column :verifications, :pattern_id
  end
end
