require 'spec_helper'

describe 'routes for Topics' do

  it 'routes /topics to the topics controller' do
    expect(get('/topics')).to route_to('topics#index')
  end

end