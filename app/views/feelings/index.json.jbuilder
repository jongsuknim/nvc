json.array!(@feelings) do |feeling|
  json.extract! feeling, :id, :feeling_card_id, :experience_id, :note, :deleted_at
  json.url feeling_url(feeling, format: :json)
end
