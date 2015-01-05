class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.text :address

      t.timestamps
    end
  end
end
