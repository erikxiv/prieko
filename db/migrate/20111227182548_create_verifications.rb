class CreateVerifications < ActiveRecord::Migration
  def change
    create_table :verifications do |t|
      t.string :raw
      t.string :bank
      t.string :verification_id
      t.date :verification_date
      t.float :amount
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
