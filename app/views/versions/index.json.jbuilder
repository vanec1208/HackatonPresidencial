json.array!(@versions) do |version|
  json.extract! version, :candidates, :questions, :tips, :url
end