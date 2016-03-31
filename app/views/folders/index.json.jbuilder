json.array!(@folders) do |folder|
  json.extract! folder, :id, :title
  json.url folder_url(folder, format: :json)
end
