json.array!(@white_cards) do |white_card|
  json.extract! white_card, :id, :text
  json.url white_card_url(white_card, format: :json)
end
