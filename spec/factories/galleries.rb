# == Schema Information
#
# Table name: galleries
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  latitude   :float
#  longitude  :float
#

FactoryBot.define do
  factory :gallery do
    sequence(:name) { |n| "#{Faker::Hipster.word}_#{n}" }
    latitude {Faker::Address.latitude}
    longitude {Faker::Address.longitude}
  end
end
