class UsersController < ApplicationController
  
  def index
    @users = User.paginate(:page => 1)
  end
end
