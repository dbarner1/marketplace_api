class EditAisleToString < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :aisle, :string
  end
end
