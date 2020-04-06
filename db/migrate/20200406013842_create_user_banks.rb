class CreateUserBanks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_banks do |t|
      t.integer :user_id
      t.integer :bank_id
      t.timestamps null: false
    end
  end
end
