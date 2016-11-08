class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :orders
end
