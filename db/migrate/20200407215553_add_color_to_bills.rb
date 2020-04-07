class AddColorToBills < ActiveRecord::Migration[5.2]
  def change
    add_column :bills, :color, :string
  end
end
