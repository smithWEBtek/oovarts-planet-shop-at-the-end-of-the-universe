class Feature < ActiveRecord::Base
	has_many :orders
	has_many :planets, through: :orders

	validates :name, presence: true
	validates :description, length: { maximum: 250 }
end
