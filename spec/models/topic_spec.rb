require 'spec_helper'

describe Topic do
  
  it 'has a valid factory' do
    FactoryGirl.create(:topic).should be_valid
  end

  it 'is invalid without a name' do
    FactoryGirl.build(:topic, name: nil).should_not be_valid
  end

  it 'should have unique names' do
    topic1 = FactoryGirl.create(:topic, name: "Business")
    FactoryGirl.build(:topic, name: topic1.name).should_not be_valid
  end

  it 'returns a topic\'s name' do
    FactoryGirl.build(:topic, name: "Fitness").name.should == "Fitness"
  end

end
