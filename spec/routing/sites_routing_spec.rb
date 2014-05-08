require 'spec_helper'

describe 'routes for Sites' do

  it 'routes /sites to the sites controller' do
    expect(get('/')).to route_to('sites#index')
  end

  it 'routes /sites/about to the sites controller' do
    expect(get('/sites/about')).to route_to('sites#about')
  end

  it 'routes /sites/faq to the sites controller' do
    expect(get('/sites/faq')).to route_to('sites#faq')
  end
  
end