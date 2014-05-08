require 'faker'

FactoryGirl.define do
  factory :article do |f|
    f.title { Faker::Lorem.sentence }
    f.summary { Faker::Lorem.paragraph }
    f.topic_id { Random.rand(1..8) }
  end
end
