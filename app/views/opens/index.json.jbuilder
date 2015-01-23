json.array!(@opens) do |open|
  json.extract! open, :id, :yelp, :name, :street, :city, :state, :zip, :phone, :neighborhood, :website, :category, :latitude, :longitude
  json.url open_url(open, format: :json)
end
