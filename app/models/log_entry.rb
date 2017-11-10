class LogEntry < ApplicationRecord
  belongs_to :technician
  belongs_to :aircraft
  belongs_to :engine
  belongs_to :supervisor
  belongs_to :client
  belongs_to :work_location
  belongs_to :custom_cat
end
