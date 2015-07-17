class Photo < ActiveRecord::Base
	belongs_to :user
	belongs_to :place
	mount_uploader :picture, AvatarUploader
	validates :caption, :presence => true, :length => { :minimum => 3 }
end