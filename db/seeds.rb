# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Article seeds
Article.create(title: "Afghanistan War Intensifies", summary: "The Afghan War has continued to worsen in recent months")
Article.create(title: "Russia Invades Ukraine", summary: "Russia has continued to make advances into Ukraine, in violation of international law")
Article.create(title: "Gay Marriage", summary: "Gay marriage has been overturned in Michigan")

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
User.create(first_name: "Steven", last_name: "Miller", email: "stevenmiller888@me.com", password: "qwerty", password_confirmation: "qwerty")
User.create(first_name: "John", last_name: "Smith", email: "johnsmith@gmail.com", password: "john123", password_confirmation: "john123")
User.create(first_name: "Jane", last_name: "Smith", email: "janesmith@aol.com", password: "janeabc", password_confirmation: "janeabc")

# Subscription seeds
Subscription.create(user_id: 1, topic_id: 2)
Subscription.create(user_id: 2, topic_id: 2)
Subscription.create(user_id: 3, topic_id: 1)
