json.array!(@sites) do |site|
  json.extract! site, :id, :name, :contact, :about, :address, :city, :state, :zip, :tag
  json.url site_url(site, format: :json)
end
