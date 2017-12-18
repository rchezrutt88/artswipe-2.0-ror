json.extract! artwork, :id, :title, :artist, :date_painted, :location, :created_at, :updated_at, :art_image
json.url artwork_url(artwork, format: :json)
