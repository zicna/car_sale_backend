class Addcolumntovehicles < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :vin, :string
  end
end
