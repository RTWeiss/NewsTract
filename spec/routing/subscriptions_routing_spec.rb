require 'spec_helper'

describe 'routes for Subscriptions' do

  it 'routes /subscriptions to the subscriptions controller' do
    expect(get('/subscriptions')).to route_to('subscriptions#index')
  end

  it 'routes /subscriptions/new to the subscriptions controller' do
    expect(get('/subscriptions/new')).to route_to('subscriptions#new')
  end

  it 'routes /subscriptions to the subscriptions controller' do
    expect(post('/subscriptions/')).to route_to('subscriptions#create')
  end

end