class Planet < ActiveRecord::Base
	belongs_to :user
	has_many :orders
	has_many :features, through: :orders

	validates :name, presence: true, uniqueness: true, length: { in: 3..20 }
	validates :moons, length: { maximum: 8 }
	validates :population, length: { maximum: 8000000 }

	def self.most_populated
		order('population desc').first
	end

	def self.most_moons
		order('moons desc').first
	end

	def self.most_expensive
		order('price desc').first
	end

	def orders_attributes=(attributes)
		attributes.values.each do |att|
			if !att[:feature_id].blank? && !att[:size].blank?
				order = Order.new(att)
				order.planet = self
				order.price = rand(1000..8000)
				self.orders << order
			end
		end
	end

end
