json.array!(@questions) do |question|
  json.extract! question, :id, :question, :shuffle_answers
  json.url question_url(question, format: :json)
end
