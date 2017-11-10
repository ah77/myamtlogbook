class CreateLogEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :log_entries do |t|
      t.references :technician, foreign_key: true
      t.date :date
      t.references :aircraft, foreign_key: true
      t.references :engine, foreign_key: true
      t.string :components
      t.text :description
      t.boolean :repairman
      t.boolean :amt
      t.boolean :ir_ra
      t.boolean :ia_ai
      t.boolean :ia_pi
      t.decimal :maint_time_small, precision: 7, scale: 2
      t.decimal :maint_time_large, precision: 7, scale: 2
      t.references :supervisor, foreign_key: true
      t.references :client, foreign_key: true
      t.references :work_location, foreign_key: true
      t.integer :jasc
      t.string :attachment
      t.references :custom_cat, foreign_key: true

      t.timestamps
    end
  end
end
