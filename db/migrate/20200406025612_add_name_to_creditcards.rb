class AddNameToCreditcards < ActiveRecord::Migration[5.2]
  def change
    add_column :creditcards, :name, :string
  end
end
