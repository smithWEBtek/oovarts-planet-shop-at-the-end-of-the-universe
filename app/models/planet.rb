class Planet < ActiveRecord::Base
	belongs_to :user
	has_many :orders
	has_many :features, through: :orders

	validates :name, presence: true, uniqueness: true, length: { in: 3..20 }
	validates :moons, length: { maximum: 8 }
	validates :population, length: { maximum: 8000000 }

	def self.most_populated
		order('population desc').limit(1).pluck(:name).join
	end

	def self.most_moons
		order('moons desc').limit(1).pluck(:name).join
	end

	def self.most_expensive
		order('price desc').limit(1).pluck(:name).join
	end
end
