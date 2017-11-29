json.extract! photo, :id, :image, :view_count, :description, :location, :date, :camera_type, :created_at, :updated_at
json.url photo_url(photo, format: :json)
