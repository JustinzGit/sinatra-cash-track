class CreateDebitcards < ActiveRecord::Migration[6.0]
  def change
    create_table :debitcards do |t|
      t.string :balance
      t.integer :user_id
      t.integer :bank_id
      t.timestamps null: false
    end
  end
end
