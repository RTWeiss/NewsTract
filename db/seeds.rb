# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Topic seeds
Topic.create(name: "World") #Topic_id = 1
Topic.create(name: "U.S.") #Topic_id = 2
Topic.create(name: "Business") #Topic_id = 3
Topic.create(name: "Technology") #Topic_id = 4
Topic.create(name: "Entertainment") #Topic_id = 5
Topic.create(name: "Sports") #Topic_id = 6
Topic.create(name: "Science") #Topic_id = 7
Topic.create(name: "Health") #Topic_id = 8

# Article seeds
Article.create(title: "Test", summary: "Test", topic_id: 1)
Article.create(title: "Test", summary: "Test", topic_id: 2)
Article.create(title: "Test", summary: "Test", topic_id: 3)
Article.create(title: "Test", summary: "Test", topic_id: 4)
Article.create(title: "Test", summary: "Test", topic_id: 5)
Article.create(title: "Test", summary: "Test", topic_id: 6)
Article.create(title: "Test", summary: "Test", topic_id: 7)
Article.create(title: "Test", summary: "Test", topic_id: 8)