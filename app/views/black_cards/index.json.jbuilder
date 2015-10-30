json.array!(@black_cards) do |black_card|
  json.extract! black_card, :id, :text, :blanks
  json.url black_card_url(black_card, format: :json)
end
