class PlanetSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :orders
  has_one :user
end
