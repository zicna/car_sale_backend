class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.string :type
      t.boolean :is_new
      t.number :mileage
      t.string :image
      t.number :price

      t.timestamps
    end
  end
end
