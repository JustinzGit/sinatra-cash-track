class AddNameToDebitcards < ActiveRecord::Migration[5.2]
  def change
    add_column :debitcards, :name, :string
  end
end
