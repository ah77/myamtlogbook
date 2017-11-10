json.extract! log_entry, :id, :technician_id, :date, :aircraft_id, :engine_id, :components, :description, :repairman, :amt, :ir_ra, :ia_ai, :ia_pi, :maint_time_small, :maint_time_large, :supervisor_id, :client_id, :work_location_id, :jasc, :attachment, :custom_cat_id, :created_at, :updated_at
json.url log_entry_url(log_entry, format: :json)
