class AddAisleToProducts < ActiveRecord::Migration[5.0]
  def change
  add_column :products, :aisle, :text
  end
end
