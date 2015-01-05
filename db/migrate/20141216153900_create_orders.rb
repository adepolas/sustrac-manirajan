class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :product, index: true
      t.references :client, index: true
      t.date :order_date

      t.timestamps
    end
  end
end
