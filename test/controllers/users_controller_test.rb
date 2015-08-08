require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  
  test "User Dashboard Successful Page Load" do 
  	u = FactoryGirl.create(:user)
  	get :show, :id => u.id
  	assert_response :success
  end
end
