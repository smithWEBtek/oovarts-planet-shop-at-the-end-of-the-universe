class Planet < ActiveRecord::Base
	belongs_to :user
	has_many :orders
	has_many :features, through: :orders

	validates :name, presence: true
	validates :moons, length: { in: 0..8 }
	validates :population, length: { in: 0..8000000 }
end
