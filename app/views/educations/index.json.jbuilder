json.array!(@educations) do |education|
  json.extract! education, :id, :type
  json.url education_url(education, format: :json)
end
