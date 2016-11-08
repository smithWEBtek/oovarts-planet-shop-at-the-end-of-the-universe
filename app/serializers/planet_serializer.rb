class PlanetSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id
  has_many :orders
  has_one :user
end
