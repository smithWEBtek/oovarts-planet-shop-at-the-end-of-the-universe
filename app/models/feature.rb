class Feature < ActiveRecord::Base
	has_many :orders
	has_many :planets, through: :orders
end
