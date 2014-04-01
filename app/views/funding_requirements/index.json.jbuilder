json.array!(@funding_requirements) do |funding_requirement|
  json.extract! funding_requirement, :id, :desired_amount, :percentage_to_give
  json.url funding_requirement_url(funding_requirement, format: :json)
end
