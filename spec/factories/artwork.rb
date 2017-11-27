FactoryBot.define do
  factory :artwork do
    title { Faker::Book.title }
    artist { Faker::Book.author }
    date_painted { Faker::Number.between(500, 2000) }
    location { Faker::Address.city }
    art_image { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'artworks', '600x600.jpg'), 'image/jpeg')}
  end
end
