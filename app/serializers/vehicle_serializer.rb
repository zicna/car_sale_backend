class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :type, :is_new, :mileage, :image, :price
end
