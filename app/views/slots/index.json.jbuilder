json.array!(@slots) do |slot|
  json.extract! slot, :id, :title, :body
  json.url slot_url(slot, format: :json)
end
