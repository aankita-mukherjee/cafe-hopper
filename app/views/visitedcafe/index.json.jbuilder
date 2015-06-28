json.array!(@visitedcafe) do |visitedcafe|
  json.extract! visitedcafe, :id, :user_id, :cafe_id
  json.url visitedcafe_url(visitedcafe, format: :json)
end
