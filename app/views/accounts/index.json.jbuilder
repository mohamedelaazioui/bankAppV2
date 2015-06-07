json.array!(@accounts) do |account|
  json.extract! account, :id, :beginDate, :expiryDate, :saldo, :rate, :client_id, :status_id, :category_id
  json.url account_url(account, format: :json)
end
