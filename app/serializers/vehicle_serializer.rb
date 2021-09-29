class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :segment, :is_new, :mileage, :image, :price, :vin, :year
end
