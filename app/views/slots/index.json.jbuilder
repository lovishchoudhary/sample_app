json.array!(@slots) do |slot|
  json.extract! slot, :date, :start_time, :end_time, :slot_status, :listing_id
  json.url slot_url(slot, format: :json)
end