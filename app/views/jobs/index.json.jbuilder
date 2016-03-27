json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :start, :end, :timezone, :candidate_id
  json.url job_url(job, format: :json)
end
