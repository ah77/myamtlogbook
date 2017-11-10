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

ActiveRecord::Schema.define(version: 20171110183343) do

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
  end

  create_table "clients", force: :cascade do |t|
    t.string "company_name"
    t.string "contact_name"
    t.text "notes"
    t.text "contact_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "custom_cats", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  end

  create_table "log_entries", force: :cascade do |t|
    t.integer "technician_id"
    t.date "date"
    t.integer "aircraft_id"
    t.integer "engine_id"
    t.string "components"
    t.text "description"
    t.boolean "repairman"
    t.boolean "amt"
    t.boolean "ir_ra"
    t.boolean "ia_ai"
    t.boolean "ia_pi"
    t.decimal "maint_time_small", precision: 7, scale: 2
    t.decimal "maint_time_large", precision: 7, scale: 2
    t.integer "supervisor_id"
    t.integer "client_id"
    t.integer "work_location_id"
    t.integer "jasc"
    t.string "attachment"
    t.integer "custom_cat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aircraft_id"], name: "index_log_entries_on_aircraft_id"
    t.index ["client_id"], name: "index_log_entries_on_client_id"
    t.index ["custom_cat_id"], name: "index_log_entries_on_custom_cat_id"
    t.index ["engine_id"], name: "index_log_entries_on_engine_id"
    t.index ["supervisor_id"], name: "index_log_entries_on_supervisor_id"
    t.index ["technician_id"], name: "index_log_entries_on_technician_id"
    t.index ["work_location_id"], name: "index_log_entries_on_work_location_id"
  end

  create_table "supervisors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "work_locations", force: :cascade do |t|
    t.string "description"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
