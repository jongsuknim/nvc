json.array!(@feeling_cards) do |feeling_card|
  json.extract! feeling_card, :id, :super_category, :category, :title
  json.url feeling_card_url(feeling_card, format: :json)
end
