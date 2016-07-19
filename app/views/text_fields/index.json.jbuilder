json.array!(@text_fields) do |text_field|
  json.extract! text_field, :id, :name, :user_id
  json.url text_field_url(text_field, format: :json)
end
