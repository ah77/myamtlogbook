class CreateWorkLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :work_locations do |t|
      t.string :description
      t.text :notes

      t.timestamps
    end
  end
end
