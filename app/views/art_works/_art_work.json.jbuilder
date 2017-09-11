json.extract! art_work, :id, :title, :artist, :date_painted, :location, :created_at, :updated_at
json.url art_work_url(art_work, format: :json)
