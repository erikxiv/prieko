class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :pattern
      t.string :category

      t.timestamps
    end
  end
end
