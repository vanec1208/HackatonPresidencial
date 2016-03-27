json.array!(@votes) do |vote|
  json.extract! vote, :id, :candidate_id
end