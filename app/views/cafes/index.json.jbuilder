json.array!(@cafes) do |cafe|
  json.extract! cafe, :id, :cafename, :address, :goforits, :phone, :hashtags, :features, :description
  json.url cafe_url(cafe, format: :json)
end
