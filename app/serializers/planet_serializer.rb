class PlanetSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :population, :moons, :user_id
end
