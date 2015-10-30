json.array!(@players) do |player|
  json.extract! player, :id, :user_id, :user_name
  json.url player_url(player, format: :json)
end
