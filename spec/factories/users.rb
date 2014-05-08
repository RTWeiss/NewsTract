require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.email { Faker::Internet.email }
    pass1 = Faker::Internet.password
    f.password { pass1 }
    f.password_confirmation { pass1 }
  end
end
