class Order < ActiveRecord::Base
	belongs_to :planet
	belongs_to :feature

	validates :size, presence: true, length: { in: 50..8000000 }
end
