class CreateTechnicians < ActiveRecord::Migration[5.1]
  def change
    create_table :technicians do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :certificate_number
      t.string :certificate_type

      t.timestamps
    end
    add_index :technicians, :username, unique: true
    add_index :technicians, :email, unique: true
  end
end
