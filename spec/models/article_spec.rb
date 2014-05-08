require 'spec_helper'

describe Article do

  it 'expect it to respond to title and summary' do
    article = Article.create(title: "Apple Releases iPhone 6", summary: "Apple Inc. has released the next generation iPhone, the iPhone 6.")
    expect(article).to respond_to (:title)
    expect(article).to respond_to (:summary)
  end

  

end
