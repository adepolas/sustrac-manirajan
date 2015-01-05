json.array!(@orders) do |order|
  json.extract! order, :id, :product_id, :client_id, :order_date
  json.url order_url(order, format: :json)
end
