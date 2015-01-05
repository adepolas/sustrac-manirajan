json.array!(@products) do |product|
  json.extract! product, :id, :model, :description, :price, :stock, :brand_id
  json.url product_url(product, format: :json)
end
