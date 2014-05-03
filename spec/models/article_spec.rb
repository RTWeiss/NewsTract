require 'spec_helper'

describe Article do

  it 'should respond to title and summary' do
    article = Article.create(title: "Apple Releases iPhone 6", summary: "Apple Inc. has released the next generation iPhone, the iPhone 6.")
    article.should respond_to (:title)
    article.should respond_to (:summary)
  end

end
