class PhotosController < ApplicationController
	before_action :authenticate_user!
	def create
		@place = Place.find(params[:place_id])
		@place.photo.create(photo_params)
		@place.caption.create(caption_params)
		redirect_to place_path(@place)
	end
end

private

def photo_params
	params.require(:photo)
end

def caption_params
	params.require(:caption).permit(:caption)
end