json.array!(@cafefeatures) do |cafefeature|
  json.extract! cafefeature, :id, :cafe_id, :featurename
  json.url cafefeature_url(cafefeature, format: :json)
end
