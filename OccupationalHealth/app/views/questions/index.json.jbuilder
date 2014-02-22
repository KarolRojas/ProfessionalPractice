json.array!(@questions) do |question|
  json.extract! question, :id, :category_id, :answer_type_id, :description, :language_key
  json.url question_url(question, format: :json)
end
