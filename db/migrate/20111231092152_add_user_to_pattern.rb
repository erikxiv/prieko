class AddUserToPattern < ActiveRecord::Migration
  def up
    change_table :patterns do |t|
      t.integer :user_id
    end
    Verification.reset_column_information
  end

  def down
    remove_column :patterns, :user_id
  end
end
