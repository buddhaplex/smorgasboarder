class Place < ActiveRecord::Base
	validates :name, :description, :address, :presence => true, :length => { :minimum => 3 }

	belongs_to :user
	has_many :comments
	has_many :photos

	geocoded_by :address
	after_validation :geocode 

end
