json.array!(@beers) do |beer|
  json.extract! beer, :id, :name, :brand_id, :image_id
  json.url beer_url(beer, format: :json)
end
