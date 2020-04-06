class CreateDebitcards < ActiveRecord::Migration[5.2]
  def change
    create_table :debitcards do |t|
      t.string :balance
      t.integer :user_id
      t.integer :bank_id
      t.timestamps null: false
    end
  end
end
