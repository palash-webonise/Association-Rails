json.array!(@products) do |product|
  json.extract! product, :id, :id, :cost
  json.url product_url(product, format: :json)
end
