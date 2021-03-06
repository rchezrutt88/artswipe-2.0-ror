FactoryBot.define do
  factory :artwork do
    sequence(:title) { |n| "#{Faker::Book.title}_#{n}" }
    artist { Faker::Book.author }
    date_painted { Faker::Number.between(500, 2000) }
    location { Faker::Address.city }
    art_image { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'artworks', '600x600.jpg'), 'image/jpeg')}

    factory :artwork_with_gallery do
      gallery
    end
  end
end
