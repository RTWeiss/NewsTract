FactoryGirl.define do
  factory :subscription do |f|
    #4 users are seeded
    f.user_id { Random.rand(1..4) }
    #There are always 8 topics
    f.topic_id { Random.rand(1..8) }  
  end
end