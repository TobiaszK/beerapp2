json.array!(@questionnaires) do |questionnaire|
  json.extract! questionnaire, :id, :age, :sex, :city, :education_id
  json.url questionnaire_url(questionnaire, format: :json)
end
