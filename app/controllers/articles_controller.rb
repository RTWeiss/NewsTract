class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def create
    # Retrieve and parse the HTML document
    doc = Nokogiri::HTML(open('https://news.google.com'))
    # Extract the articles using the CSS selectors
    articles = doc.css(".esc-layout-article-cell")
  
    articles.each do |article|
      # Extract the first title from the articles
      title = article.css("span.titletext").first.text
      # Extract the summary from the articles
      summary = article.css(".esc-lead-snippet-wrapper").text
    end
    # Create the article with the title and summary
    Article.create(title: title, summary: summary)
  end

end