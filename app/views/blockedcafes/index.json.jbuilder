json.array!(@blockedcafes) do |blockedcafe|
  json.extract! blockedcafe, :id, :user_id, :cafe_id
  json.url blockedcafe_url(blockedcafe, format: :json)
end
