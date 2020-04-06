class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.string :provider
      t.float :balance
      t.string :duedate
      t.boolean :paid?
      t.integer :user_id
      t.timestamps null: false
    end 
  end
end
