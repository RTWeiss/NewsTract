class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def create
    # Store the topic urls in strings
    #Topic_id = 1
    world_url_string = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=w&output=rss"
    #Topic_id = 2
    us_url_string = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=n&output=rss"
    #Topic_id = 3
    business_url_string = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=b&output=rss"
    #Topic_id = 4
    technology_url_string = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=tc&output=rss"
    #Topic_id = 5
    entertainment_url_string = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=e&output=rss"
    #Topic_id = 6
    sports_url_string = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=s&output=rss"
    #Topic_id = 7
    science_url_string = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=snc&output=rss"
    #Topic_id = 8
    health_url_string = "https://news.google.com/news/section?pz=1&ned=us&hl=en&topic=m&output=rss"
    
    #Add the url strings to an array
    url_array = []
    url_array.push world_url_string
    url_array.push us_url_string
    url_array.push business_url_string
    url_array.push technology_url_string
    url_array.push entertainment_url_string
    url_array.push sports_url_string
    url_array.push science_url_string
    url_array.push health_url_string

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
      Article.create(title: title, summary: summary, topic_id: url_array.index(url) + 1)
      #get url index
    end

    # #Add MetaInspector to grab images from original article
    # page = MetaInspector.new(main_article_link)
    # image_link = page.image
  end

end