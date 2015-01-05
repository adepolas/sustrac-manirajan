class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :model
      t.text :description
      t.integer :price
      t.integer :stock
      t.references :brand, index: true

      t.timestamps
    end
  end
end
