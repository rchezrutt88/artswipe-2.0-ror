require_relative 'helpers'
FactoryBot.define do
  factory :user do
    transient do
      city {Factory_Helpers.gen_location}
    end
    sequence(:email) {|n| "x#{n}@x.com"}
    password '123456'
    password_confirmation '123456'
    latitude {city[:lat]}
    longitude {city[:lng]}
  end
end
