# NewsTract

* NewsTract is a Ruby on Rails app for reading summaries of trending news articles from Google News

* It uses Nokogiri to parse the articles, Devise for authentication, and Typheous for API requests. It also uses rails erd

* There are 4 models: articles, subscriptions, topics, and users. The app uses rails erd to automate generation of the entity relationship diagram. 

If you would like to run NewsTract locally, just clone this repo:

```
git clone https://github.com/stevenmiller888/NewsTract.git
```

Run bundle install:

```
bundle install
```

And start the server:

```
rails s
```

