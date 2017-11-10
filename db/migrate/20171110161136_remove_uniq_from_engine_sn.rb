class RemoveUniqFromEngineSn < ActiveRecord::Migration[5.1]
  def change
    remove_index :engines, :serial_number
  end
end
