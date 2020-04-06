class AddCheckingBalanceToBanks < ActiveRecord::Migration[5.2]
  def change
    add_column :banks, :checking_balance, :float
  end
end
