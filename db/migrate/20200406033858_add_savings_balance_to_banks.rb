class AddSavingsBalanceToBanks < ActiveRecord::Migration[5.2]
  def change
    add_column :banks, :savings_balance, :float
  end
end
