class Planet < ActiveRecord::Base
	belongs_to :user
	has_many :orders
	has_many :features, through: :orders

	validates :name, presence: true, uniqueness: true, length: { in: 3..20 }
	validates :moons, length: { maximum: 8 }
	validates :population, length: { maximum: 8000000 }

	accepts_nested_attributes_for :orders

	def self.most_populated
		order('population desc').first
	end

	def self.most_moons
		order('moons desc').first
	end

	def self.most_expensive
		order('price desc').first
	end

	# def orders_attributes=(attributes)
	# 	attributes.values.each do |attr|
	# 		order = Order.new(attr)
	# 		self.orders.build(feature_id: feature.id)
	# 	end
	# end

end
