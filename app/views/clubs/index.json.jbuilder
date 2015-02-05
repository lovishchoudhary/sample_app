json.array!(@clubs) do |club|
  json.extract! club, :club, :location, :address, :description, :email, :phone, :city
  json.url club_url(club, format: :json)
end