class VerificationAddUser < ActiveRecord::Migration
  def up
    change_table :verifications do |t|
      t.integer :user_id
    end
    Verification.reset_column_information
  end

  def down
    remove_column :verifications, :user_id
  end
end
