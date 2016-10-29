class Order < ActiveRecord::Base
	belongs_to :planet
	belongs_to :feature

	validates :size, presence: true

	# accepts_nested_attributes_for :feature

	def feature_attributes=(attributes)
		feature = Feature.find_or_create_by(attributes)
		self.price = rand(1000..8000)
		self.feature_id = feature.id
	end

end
