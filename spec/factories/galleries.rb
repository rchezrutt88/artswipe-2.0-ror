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
  cities = [
    [42.3601, 71.0589],
    [40.7128, 74.0060],
    [41.8781, 87.6297],
    [48.8566, -2.3522],
    [52.3702, -4.8952],
    [40.4168, 3.7038]
  ]
  factory :gallery do
    transient do
      city cities.sample
    end
    sequence(:name) { |n| "gallery_#{n}" }
    latitude {city[0]}
    longitude {city[1]}

    factory :gallery_with_artworks do
      transient do
        artworks_count 5
      end

      after(:create) do |gallery, evaluator|
        create_list(:artwork, evaluator.artworks_count, gallery: gallery)
      end

    end
  end
end