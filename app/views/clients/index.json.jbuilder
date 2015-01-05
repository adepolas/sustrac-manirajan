json.array!(@clients) do |client|
  json.extract! client, :id, :first_name, :last_name, :birth_date, :address
  json.url client_url(client, format: :json)
end
