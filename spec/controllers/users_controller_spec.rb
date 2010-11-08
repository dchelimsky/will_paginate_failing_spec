require 'spec_helper'

describe UsersController do
  context '#index' do
    before(:each) do
      5.times do
        Factory :user
      end
    end
    
    it 'returns a paginated collection' do
      get :index
      
      assigns[:users].should be_an_instance_of(WillPaginate::Collection)
    end
  end
end
