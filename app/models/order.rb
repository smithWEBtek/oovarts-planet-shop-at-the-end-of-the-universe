class Order < ActiveRecord::Base
	belongs_to :planet
	belongs_to :feature

	validates :size, presence: true
end
