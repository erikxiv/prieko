class AddVerificationSaldo < ActiveRecord::Migration
  def up
    change_table :verifications do |t|
      t.float :balance
    end
    Verification.reset_column_information
    
    # Get all SEB transactions and get balance from raw column
    Verification.where(:bank => "SEB").each do |p|
      p.update_attribute :balance, p.raw.split("\t")[5].strip.gsub(/[^0-9\-\,]/, "").gsub(/,/,".").to_f
    end
    
  end

  def down
    remove_column :verifications, :balance
  end
end
