require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  
test "humanized_rating equals rating" do 
	c = FactoryGirl.create(:comment, :rating => "3_stars")
	expected = "three stars"
	actual = c.humanized_rating
	assert_equal expected, actual
end


end
