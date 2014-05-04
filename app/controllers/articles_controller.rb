class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def create
    # Retrieve and parse the HTML document
    doc = Nokogiri::HTML(open('https://news.google.com'))
    # Extract the articles using the CSS selectors
    articles = doc.css(".esc-layout-article-cell")
    # Extract the title from the articles
    articles.each do |article|
      # There are multiple titles per article, this will use the first title
      title = article.css("span.titletext").first.text
      summary = article.css(".esc-lead-snippet-wrapper").text
    end
    # Create the article with the title and summary
    Article.create(title: title, summary: summary)
  end

end
