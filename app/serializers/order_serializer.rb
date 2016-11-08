class OrderSerializer < ActiveModel::Serializer
  attributes :id, :price, :size
  has_one :feature, serializer: FeatureOrderSerializer
end
