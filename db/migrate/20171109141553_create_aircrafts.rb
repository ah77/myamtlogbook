class CreateAircrafts < ActiveRecord::Migration[5.1]
  def change
    create_table :aircrafts do |t|
      t.string :n_number
      t.string :serial_number
      t.references :ac_make_model, foreign_key: true
      t.text :notes

      t.timestamps
    end
    add_index :aircrafts, :n_number, unique: true
    add_index :aircrafts, :serial_number, unique: true
  end
end
