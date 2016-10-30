class Feature < ActiveRecord::Base
	before_save { self.name = name.downcase }

	has_many :orders
	has_many :planets, through: :orders

	validates :name, presence: true
	validates :description, length: { maximum: 1000 }
	# validate :has_name?

	# def has_name?
 #    if !self.name
 #      errors.add(:name, "must have a name.")
 #    end
 #  end
end
