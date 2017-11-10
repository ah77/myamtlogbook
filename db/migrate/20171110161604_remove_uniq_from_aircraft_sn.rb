class RemoveUniqFromAircraftSn < ActiveRecord::Migration[5.1]
  def change
    remove_index :aircrafts, :serial_number
  end
end
