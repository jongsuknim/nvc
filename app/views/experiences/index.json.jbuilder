json.array!(@experiences) do |experience|
  json.extract! experience, :id, :observation, :request, :memo, :deleted_at
  json.url experience_url(experience, format: :json)
end
