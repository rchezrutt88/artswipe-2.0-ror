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
require_relative 'helpers'
FactoryBot.define do
  factory :gallery do
    transient do
      city {Factory_Helpers.gen_location}
    end
    sequence(:name) { |n| "gallery_#{n}" }
    latitude {city[:lat]}
    longitude {city[:lng]}

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