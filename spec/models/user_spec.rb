require 'spec_helper'

describe User do
    
  it 'has a valid factory' do
    FactoryGirl.create(:user).should be_valid
  end

  it 'is invalid without an email' do
    FactoryGirl.build(:user, email: nil).should_not be_valid
  end

  it 'is invalid if email isn\'t in the proper format' do
    FactoryGirl.build(:user, email: "test").should_not be_valid
  end

  it 'is invalid without a password' do
    FactoryGirl.build(:user, password: nil).should_not be_valid
  end

  it 'is invalid if password isn\'t long enough' do
    FactoryGirl.build(:user, password: "abc").should_not be_valid
  end

  it 'is invalid if password and password confirmation don\'t match' do
    FactoryGirl.build(:user, password: "abc123", password_confirmation: "abc124").should_not be_valid
  end

  it 'is invalid if the email address is already signed up' do
    test_user = FactoryGirl.create(:user, email: 'steven1test@testing.com')
    FactoryGirl.build(:user, email: test_user.email, password: test_user.password, password_confirmation: test_user.password_confirmation).should_not be_valid
  end

  it 'returns a user\'s email address' do
    FactoryGirl.build(:user, email: 'emailtest@testing.com').email.should == 'emailtest@testing.com'
  end

end