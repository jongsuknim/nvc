json.array!(@need_cards) do |need_card|
  json.extract! need_card, :id, :category, :title
  json.url need_card_url(need_card, format: :json)
end
