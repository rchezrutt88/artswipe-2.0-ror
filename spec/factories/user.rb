FactoryBot.define do
    cities = [
      [42.3601, 71.0589],
      [40.7128, 74.0060],
      [41.8781, 87.6297],
      [48.8566, -2.3522],
      [52.3702, -4.8952],
      [40.4168, 3.7038]
    ]
  factory :user do
    transient do
      city cities.sample
    end
    sequence(:email) {|n| "x#{n}@x.com"}
    password '123456'
    password_confirmation '123456'
    latitude {city[0]}
    longitude {city[1]}
  end
end
