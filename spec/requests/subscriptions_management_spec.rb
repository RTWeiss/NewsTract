require 'spec_helper'

describe 'Subscriptions management' do
  describe 'index page' do 
    it 'redirects to a login page' do
      get '/subscriptions'
      response.code.should == "302"
      response.location.include?("/users/sign_in").should == true
    end
    it 'succeeds if a user is logged in' do 
    #   u =  FactoryGirl.create(:user)
    #   post '/users/sign_in', :password => u.password, :email => u.email
    #   get '/subscriptions'
    #   response.code.should == '200'
    end
  end
end