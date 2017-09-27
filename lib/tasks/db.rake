require 'csv'
namespace :db do
  desc "seed artworks"
  task seed_artworks: :environment do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    csv_text = File.read(File.join(Rails.root, 'lib/data/artworks.csv'), mode: 'r:windows-1252')
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
      row['art_image'] = File.open(File.join(Rails.root, 'lib/assets', row['art_image']))
      Artwork.create!(row.to_hash)
    end
  end
end
