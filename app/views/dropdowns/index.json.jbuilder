json.array!(@dropdowns) do |dropdown|
  json.extract! dropdown, :id, :name, :user_id
  json.url dropdown_url(dropdown, format: :json)
end
