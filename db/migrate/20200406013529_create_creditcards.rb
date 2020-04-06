class CreateCreditcards < ActiveRecord::Migration[6.0]
  def change
    create_table :creditcards do |t|
      t.float :balance
      t.float :credit
      t.string :duedate
      t.string :intrest_rate
      t.integer :user_id
      t.integer :bank_id
      t.timestamps null: false
    end
  end
end
