json.array!(@candidates) do |candidate|
  json.extract! candidate, :id, :name, :timeline, :twitter, :age, :party, :jobs, :studies, :webpage
end
