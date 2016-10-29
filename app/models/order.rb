class Order < ActiveRecord::Base
	belongs_to :planet
	belongs_to :feature

	validates :size, presence: true

	def feature_attributes=(attributes)
		if !attributes[:name].blank?
			feature = Feature.find_or_create_by(attributes)
			self.feature_id = feature.id
		end
	end

end
