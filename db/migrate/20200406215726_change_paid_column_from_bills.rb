class ChangePaidColumnFromBills < ActiveRecord::Migration[5.2]
  def change
    change_column :bills, :paid?, :boolean, default: false, null: false
  end
end
