require 'spec_helper'

describe Topic do

  it 'should respond to name' do
    topic = Topic.create(name: "Finance")
    topic.should respond_to (:name)
  end

end
