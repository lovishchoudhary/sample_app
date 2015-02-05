json.array!(@sports) do |sport|
  json.extract! sport, :sport
  json.url sport_url(sport, format: :json)
end