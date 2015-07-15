json.array!(@posts) do |post|
  json.extract! post, :id, :text, :queue_position
  json.url post_url(post, format: :json)
end
