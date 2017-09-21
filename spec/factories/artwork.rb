FactoryGirl.define do
  factory :artwork do
    title { Faker::Book.title }
    artist { Faker::Book.author }
    date_painted { Faker::Number.between(500, 2000) }
    location { Faker::Address.city }
  end
end