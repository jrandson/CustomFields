json.array!(@text_areas) do |text_area|
  json.extract! text_area, :id, :name, :user_id
  json.url text_area_url(text_area, format: :json)
end
