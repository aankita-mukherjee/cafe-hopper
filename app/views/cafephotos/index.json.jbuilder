json.array!(@cafephotos) do |cafephoto|
  json.extract! cafephoto, :id, :cafe_id, :photourl
  json.url cafephoto_url(cafephoto, format: :json)
end
