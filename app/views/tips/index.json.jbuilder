json.array!(@tips) do |tip|
  json.extract! tip, :id, :message, :title
end
