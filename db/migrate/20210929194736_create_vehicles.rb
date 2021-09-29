class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.string :type
      t.boolean :is_new
      t.decimal :mileage
      t.string :image
      t.decimal :price

      t.timestamps
    end
  end
end
