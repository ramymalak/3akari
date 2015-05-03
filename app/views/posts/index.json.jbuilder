json.array!(@posts) do |post|
  json.extract! post, :id, :type, :area, :price, :address, :lang, :lat, :image
  json.url post_url(post, format: :json)
end
