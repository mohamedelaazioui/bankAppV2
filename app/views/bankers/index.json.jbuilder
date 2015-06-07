json.array!(@bankers) do |banker|
  json.extract! banker, :id, :firstName, :lastName, :phoneNumber, :emailAddress, :branch_id
  json.url banker_url(banker, format: :json)
end
