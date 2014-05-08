require 'spec_helper'

describe Article do
    
  it 'has a valid factory' do
    FactoryGirl.create(:article).should be_valid
  end

  it 'is invalid without a topic_id' do
    FactoryGirl.build(:article, topic_id: nil).should_not be_valid
  end

  it 'is invalid without a title' do
    FactoryGirl.build(:article, title: nil).should_not be_valid
  end

  it 'is invalid without a summary' do
    FactoryGirl.build(:article, summary: nil).should_not be_valid
  end

  it 'is invalid if the topic_id is not an integer' do
    FactoryGirl.build(:article, topic_id: 3.4).should_not be_valid
  end

  # Note that there are only 8 topics in the database at any given time
  it 'is invalid if the topic_id is greater than 8 or less than 1' do
   FactoryGirl.build(:article, topic_id: 9).should_not be_valid
   FactoryGirl.build(:article, topic_id: 0).should_not be_valid
  end

  it 'returns an article\'s title, summary, and topic_id' do
    FactoryGirl.build(:article, title: "Playing with rails").title.should == "Playing with rails"
    FactoryGirl.build(:article, summary: "Rails is a blast. It is exciting!").summary.should == "Rails is a blast. It is exciting!"
    FactoryGirl.build(:article, topic_id: 6).topic_id.should == 6
  end

end