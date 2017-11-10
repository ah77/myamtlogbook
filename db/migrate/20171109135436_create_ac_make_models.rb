class CreateAcMakeModels < ActiveRecord::Migration[5.1]
  def change
    create_table :ac_make_models do |t|
      t.string :abbreviation
      t.string :manufacturer
      t.string :model
      t.string :family

      t.timestamps
    end
    add_index :ac_make_models, :abbreviation, unique: true
  end
end
