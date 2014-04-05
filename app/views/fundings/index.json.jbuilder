json.array!(@fundings) do |funding|
  json.extract! funding, :id, :amount, :percentage, :approved
  json.url funding_url(funding, format: :json)
end
