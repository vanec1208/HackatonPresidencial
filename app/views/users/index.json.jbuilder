json.array!(@users) do |user|
  json.extract! user, :id, :password_hash, :password_salt, :username
  json.url user_url(user, format: :json)
end
