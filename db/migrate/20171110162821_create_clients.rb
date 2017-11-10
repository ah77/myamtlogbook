class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :company_name
      t.string :contact_name
      t.text :notes
      t.text :contact_info

      t.timestamps
    end
  end
end
