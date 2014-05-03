require 'spec_helper'

describe User do

  it 'should respond to fist_name, last_name, email, password, and password_confirmation' do
    user = User.create(first_name: "George", last_name: "Walter", email: "george@yahoo.com", password: "george1", password_confirmation: "george1")
    user.should respond_to (:first_name)
    user.should respond_to (:last_name)
    user.should respond_to (:email)
    user.should respond_to (:password)
    user.should respond_to (:password_confirmation)
  end

end
