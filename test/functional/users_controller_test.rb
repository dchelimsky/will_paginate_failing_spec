require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  test "should get index" do

    5.times do
      Factory :user
    end
    get :index

    assert_instance_of WillPaginate::Collection, assigns(:users)
  end

end
