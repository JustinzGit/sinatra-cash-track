class DropDebitcards < ActiveRecord::Migration[5.2]
  def change
    drop_table :debitcards
  end
end
