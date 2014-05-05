# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Article seeds
Article.create(title: "The Real Buffett Rule", summary: "Investors undertook their annual pilgrimage to Omaha this weekend to hear Warren Buffett opine on markets and the world. One surprise is that the Berkshire Hathaway CEO seems to have adapted his famous Buffett Rule of taxation when it applies to his own ...", topic_id: 3)
Article.create(title: "9-Year-Old Girl Dies in Brooklyn Car Accident: Police", summary: "A girl was killed when a minivan hit the car she was in Sunday evening. advertisement. A 9-year-old girl died in a traffic accident in Brooklyn early Sunday evening that also left five others injured, police said.", topic_id: 2)
Article.create(title: "Bibb County Relay for Life sets up for the weekend", summary: "More than 2,000 Central Georgians are expected to pack Al Sihah park in Macon Friday and Saturday. Participants spent Friday getting ready preparing for Bibb County Relay for Life, which has a carnival theme. The opening ceremony starts at six ...", topic_id: 8)
Article.create(title: "Ban stresses eco concerns", summary: "United Arab Emirates Minister of State and Special Envoy for Energy and Climate Change, Dr. Sultan Al Jaber (R) and United Nations Secretary-General Ban Ki-moon (L) give a press conference as part of Abu Dhabi Ascent, Abu Dhabi, United Arab Emirates, ...", topic_id: 7)
Article.create(title: "LeBron James' Heat vs. revamped Nets means bad blood", summary: "The Brooklyn Nets wanted the Miami Heat in the playoffs, and honestly, it's a compelling matchup. No disrespect to the Toronto Raptors, but who can resist LeBron James vs.", topic_id: 6)
Article.create(title: "Foursquare offers users with new Swarm app for sharing intimate locations", summary: "The location-sharing app company Foursquare has decided to offer a more personal feel to its users by giving a more personal app that will provide them sharing intimate location details.", topic_id: 4)


# Topic seeds
Topic.create(name: "World")
Topic.create(name: "U.S.")
Topic.create(name: "Business")
Topic.create(name: "Technology")
Topic.create(name: "Entertainment")
Topic.create(name: "Sports")
Topic.create(name: "Science")
Topic.create(name: "Health")

# User seeds
User.create(email: "stevenmiller888@me.com", password: "qwerty", password_confirmation: "qwerty")
User.create(email: "johnsmith@gmail.com", password: "john123", password_confirmation: "john123")
User.create(email: "janesmith@aol.com", password: "janeabc", password_confirmation: "janeabc")

# Subscription seeds
Subscription.create(user_id: 1, topic_id: 2)
Subscription.create(user_id: 2, topic_id: 2)
Subscription.create(user_id: 3, topic_id: 1)
