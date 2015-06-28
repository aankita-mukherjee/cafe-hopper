json.array!(@wishlistedcafes) do |wishlistedcafe|
  json.extract! wishlistedcafe, :id, :user_id, :cafe_id
  json.url wishlistedcafe_url(wishlistedcafe, format: :json)
end
