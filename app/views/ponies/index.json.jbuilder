json.array!(@ponies) do |pony|
  json.extract! pony, :id, :name, :profession
  json.url pony_url(pony, format: :json)
end
