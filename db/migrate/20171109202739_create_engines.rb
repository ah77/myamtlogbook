class CreateEngines < ActiveRecord::Migration[5.1]
  def change
    create_table :engines do |t|
      t.string :name
      t.string :serial_number
      t.string :manufacturer
      t.string :model
      t.text :notes
      t.references :aircraft, foreign_key: true

      t.timestamps
    end
    add_index :engines, :name, unique: true
    add_index :engines, :serial_number, unique: true
  end
end
