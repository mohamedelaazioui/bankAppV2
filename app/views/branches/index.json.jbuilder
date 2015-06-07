json.array!(@branches) do |branch|
  json.extract! branch, :id, :name, :street, :streetNr, :zipCode, :city
  json.url branch_url(branch, format: :json)
end
