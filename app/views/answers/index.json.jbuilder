json.array!(@answers) do |answer|
  json.extract! answer, :id, :candidate_id, :answer, :question_id
  json.url answer_url(answer, format: :json)
end
