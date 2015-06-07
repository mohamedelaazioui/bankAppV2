json.array!(@cards) do |card|
  json.extract! card, :id, :expiryDate, :managingCompany, :saldo, :limit, :client_id, :account_id, :status_id, :type_id
  json.url card_url(card, format: :json)
end
