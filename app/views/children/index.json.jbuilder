json.array!(@children) do |child|
  json.extract! child, :id, :firstname, :lastname, :good
  json.url child_url(child, format: :json)
end
