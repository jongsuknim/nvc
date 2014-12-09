json.array!(@needs) do |need|
  json.extract! need, :id, :need_card_id, :feeling_id, :note, :deleted_at
  json.url need_url(need, format: :json)
end
