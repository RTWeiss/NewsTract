# NewsTract

* NewsTract is a Ruby on Rails app for reading summaries of trending news articles from Google News

* It uses Nokogiri to parse the articles, Devise for authentication, and Typheous for API requests

* There are 4 models: article, subscription, topic, and users. The app uses the rails-erd gem to automate generation of the entity relationship diagram

![](http://i.imgur.com/wJ51Hk5.png)

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

