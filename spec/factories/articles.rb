require 'faker'

FactoryBot.define do
  factory :article do
    title { Faker::Lorem.characters(number: 50) }
    text { Faker::Lorem.paragraphs }
  end
end
