json.array!(@listings) do |listing|
  json.extract! listing, :club_id, :sport_id
  json.url listing_url(listing, format: :json)
end