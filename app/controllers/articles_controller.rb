class ArticlesController < ApplicationController

  def create
    # Store the topic urls in strings
    #Topic_id = 1
    world_url = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=w&output=rss"
    #Topic_id = 2
    us_url = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=n&output=rss"
    #Topic_id = 3
    business_url = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=b&output=rss"
    #Topic_id = 4
    technology_url = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=tc&output=rss"
    #Topic_id = 5
    entertainment_url = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=e&output=rss"
    #Topic_id = 6
    sports_url = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=s&output=rss"
    #Topic_id = 7
    science_url = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=snc&output=rss"
    #Topic_id = 8
    health_url = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=m&output=rss"
    
    #Add the url strings to an array
    url_array = []
    url_array.push(world_url, us_url, business_url, technology_url, entertainment_url, sports_url, science_url, health_url)

    url_array.each do |url|
      # Retrieve and parse the url
      doc = Nokogiri::HTML(open(url))
      # Extract the articles using the 'item' selector
      articles = doc.css('item')
      # Choose the first article as the main article
      main_article = articles[0]
      # Extract the main article's link 
      main_article_link = main_article.at('link').next_sibling.text
      # Use Pismo to provide structure to the original article
      original_doc = Pismo::Document.new(main_article_link)
      # Extract the article's titles
      title = original_doc.title
      # Instantialize a new Sumitup parser
      parser = Sumitup::Parser.new
      # Use Sumitup to generate a summary of the article's body
      summary = parser.summarize(original_doc.body)
      # Create the article with the title, summary, and topic_id, which is the element's index plus 1
      article = Article.find_by_topic_id(url_array.index(url) + 1)
      article.title = title
      article.summary = summary
      article.save
    end

  end

end