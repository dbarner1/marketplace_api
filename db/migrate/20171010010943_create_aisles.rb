class CreateAisles < ActiveRecord::Migration[5.1]
  def change
    create_table :aisles do |t|
      t.string :name

      t.timestamps
    end
  end
end
