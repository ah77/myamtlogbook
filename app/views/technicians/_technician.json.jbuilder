json.extract! technician, :id, :name, :username, :email, :certificate_number, :certificate_type, :created_at, :updated_at
json.url technician_url(technician, format: :json)
