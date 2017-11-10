# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171109202739) do

  create_table "ac_make_models", force: :cascade do |t|
    t.string "abbreviation"
    t.string "manufacturer"
    t.string "model"
    t.string "family"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["abbreviation"], name: "index_ac_make_models_on_abbreviation", unique: true
  end

  create_table "aircrafts", force: :cascade do |t|
    t.string "n_number"
    t.string "serial_number"
    t.integer "ac_make_model_id"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ac_make_model_id"], name: "index_aircrafts_on_ac_make_model_id"
    t.index ["n_number"], name: "index_aircrafts_on_n_number", unique: true
    t.index ["serial_number"], name: "index_aircrafts_on_serial_number", unique: true
  end

  create_table "engines", force: :cascade do |t|
    t.string "name"
    t.string "serial_number"
    t.string "manufacturer"
    t.string "model"
    t.text "notes"
    t.integer "aircraft_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aircraft_id"], name: "index_engines_on_aircraft_id"
    t.index ["name"], name: "index_engines_on_name", unique: true
    t.index ["serial_number"], name: "index_engines_on_serial_number", unique: true
  end

  create_table "technicians", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "certificate_number"
    t.string "certificate_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_technicians_on_email", unique: true
    t.index ["username"], name: "index_technicians_on_username", unique: true
  end

end
