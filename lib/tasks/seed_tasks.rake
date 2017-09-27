require 'csv'
desc "Seed all artworks"
task :seed_artworks do
  csv_text = File.read('../data/artworks.csv')
  csv = CSV.parse(csv_text, headers: true)
  csv.each do |row|
    row['art_image'] = row['art_image'].prepend('lib/assets/')
    Artwork.create(row.to_hash)
  end
end