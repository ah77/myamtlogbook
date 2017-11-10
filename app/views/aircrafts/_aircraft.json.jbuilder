json.extract! aircraft, :id, :n_number, :serial_number, :ac_make_model_id, :notes, :created_at, :updated_at
json.url aircraft_url(aircraft, format: :json)
