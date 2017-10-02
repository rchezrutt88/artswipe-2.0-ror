require 'csv'
namespace :db do
  desc "seed artworks"
  task seed_artworks: :environment do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    csv_text = File.read(File.join(Rails.root, 'lib/data/artworks.csv'), mode: 'r:windows-1252')
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
      row['art_image'] = File.open(File.join(Rails.root, 'lib/assets', row['art_image']))
      artwork = Artwork.new(row.to_hash)
      artwork.gallery = Gallery.find_by(name: artwork.location)
      artwork.save
    end
  end

  desc "seed galleries"
  task seed_galleries: :environment do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    csv_text = File.read(File.join(Rails.root, 'lib/data/galleries.csv'), mode: 'r:windows-1252')
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
      Gallery.create(row.to_hash)
    end
  end

  desc "associate artworks with galleries"
  task associate_artworks_with_galleries: :environment do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    Artwork.each do |artwork|
      gallery = Gallery.find_by(name: artwork.location)
      artwork.update(gallery: gallery)
    end
  end

  desc "seed users"
  task seed_users: :environment do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    csv_text = File.read(File.join(Rails.root, 'lib/data/users.csv'))
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
      User.create(row.to_hash)
    end
  end
end
