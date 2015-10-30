json.array!(@turns) do |turn|
  json.extract! turn, :id
  json.url turn_url(turn, format: :json)
end
