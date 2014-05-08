require 'spec_helper'

describe Subscription do
    
  it 'has a valid factory' do
    FactoryGirl.create(:subscription).should be_valid
  end

  it 'is invalid without a topic_id' do
    FactoryGirl.build(:subscription, topic_id: nil).should_not be_valid
  end

  it 'is invalid if the topic_id or user_id are not integers' do
    FactoryGirl.build(:subscription, topic_id: 3.4).should_not be_valid
    FactoryGirl.build(:subscription, user_id: 4.1).should_not be_valid
  end

  # Note that there are only 8 topics in the database at any given time
  it 'is invalid if the topic_id is greater than 8 or less than 1' do
   FactoryGirl.build(:subscription, topic_id: 9).should_not be_valid
   FactoryGirl.build(:subscription, topic_id: 0).should_not be_valid
  end

  it 'is invalid without a user_id' do
   FactoryGirl.build(:subscription, user_id: nil).should_not be_valid
  end

  it 'returns a subscription\'s topic_id and user_id' do
    FactoryGirl.build(:subscription, topic_id: 3).topic_id.should == 3
    FactoryGirl.build(:subscription, user_id: 4).user_id.should == 4
  end

end