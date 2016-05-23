json.array!(@age_trackers) do |age_tracker|
  json.extract! age_tracker, :id, :name, :age
  json.url age_tracker_url(age_tracker, format: :json)
end
