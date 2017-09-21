json.extract! artwork, :id, :title, :artist, :date_painted, :location, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
