json.array!(@presentations) do |presentation|
  json.extract! presentation, :id, :url
  json.url presentation_url(presentation, format: :json)
end
