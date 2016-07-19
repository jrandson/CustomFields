json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :email, :user_id
  json.url contact_url(contact, format: :json)
end
