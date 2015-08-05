require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  
test "humanized_rating" do 
	rating = FactoryGirl.create(:comment)
	assert(rating == humanized_rating)
end

end
