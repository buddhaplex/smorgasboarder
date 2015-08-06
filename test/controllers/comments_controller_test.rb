require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

test "can create comment" do 
	u = FactoryGirl.create(:user)
	sign_in u
	place = FactoryGirl.create(:place)
	assert_difference 'place.comments.count' do
		post :create, :place_id => place.id, :comment => {
			:rating => '4_stars',
			:message => 'the best.'
		}
	end
	assert_redirected_to place_path(place)
end

end
