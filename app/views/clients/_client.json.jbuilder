json.extract! client, :id, :company_name, :contact_name, :notes, :contact_info, :created_at, :updated_at
json.url client_url(client, format: :json)
