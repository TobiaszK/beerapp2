json.array!(@quest_beers) do |quest_beer|
  json.extract! quest_beer, :id, :taste, :color, :price, :design, :average
  json.url quest_beer_url(quest_beer, format: :json)
end
