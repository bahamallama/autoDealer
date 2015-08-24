json.array!(@cars) do |car|
  json.extract! car, :id, :make_id, :description, :model_id, :year, :price, :type, :transmission, :interior, :miles, :drive, :exterior, :vin
  json.url car_url(car, format: :json)
end
