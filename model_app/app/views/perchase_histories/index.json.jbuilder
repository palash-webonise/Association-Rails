json.array!(@perchase_histories) do |perchase_history|
  json.extract! perchase_history, :id, :purchase_data, :transaction_type
  json.url perchase_history_url(perchase_history, format: :json)
end
