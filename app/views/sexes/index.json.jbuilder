json.array!(@sexes) do |sex|
  json.extract! sex, :id, :type
  json.url sex_url(sex, format: :json)
end
