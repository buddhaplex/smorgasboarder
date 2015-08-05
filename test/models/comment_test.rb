require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  
test "rating is humanized_rating" do 
	u = FactoryGirl.create(:user)
	sign_in u
	place = FactoryGirl.create(:place)
	assert_difference 'place.comments.count' do
		post :create, :place_id => place.id, :comment => {
			:rating => '1_star',
			:message => 'the best.'
		}
	end
	assert_redirected_to place_path(place)
	comment = Comment.last
	assert_no_difference RATING, humanized_rating
end

end
