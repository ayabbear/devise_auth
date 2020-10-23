require 'faker'

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    username { Faker::Internet.username }
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    password { "#$%6hasdiw678kqBDTwgw" }
  end
end
