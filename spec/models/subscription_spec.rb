require 'spec_helper'

describe Subscription do

  it 'should respond to user_id and topic_id' do
    subscription = Subscription.create(user_id: 3, topic_id: 1)
    subscription.should respond_to (:user_id)
    subscription.should respond_to (:topic_id)
  end

end
