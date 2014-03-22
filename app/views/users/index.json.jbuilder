json.array!(@users) do |user|
  json.extract! user, :id, :name, :provider, :uid, :classification
  json.url user_url(user, format: :json)
end
