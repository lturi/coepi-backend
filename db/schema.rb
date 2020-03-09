# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_09_034552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "case_bluetooth_devices", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "case_id"
    t.text "bluetooth_hash", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["case_id"], name: "index_case_bluetooth_devices_on_case_id"
  end

  create_table "cases", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "client_id"
    t.datetime "symptom_onset_time", null: false
    t.datetime "likely_exposure_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_cases_on_client_id"
  end

  create_table "client_bluetooth_devices", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "client_id"
    t.text "bluetooth_hash_prefix", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_client_bluetooth_devices_on_client_id"
  end

  create_table "clients", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "begin_dt", null: false
    t.datetime "last_update_dt", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exposures", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "client_id"
    t.uuid "cases_id"
    t.text "geohash", null: false
    t.datetime "start_timeband", null: false
    t.datetime "end_timeband", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cases_id"], name: "index_exposures_on_cases_id"
    t.index ["client_id"], name: "index_exposures_on_client_id"
  end

  create_table "subscriptions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "client_id"
    t.text "geohash", null: false
    t.datetime "start_timeband", null: false
    t.datetime "end_timeband", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_subscriptions_on_client_id"
  end

  add_foreign_key "case_bluetooth_devices", "cases"
  add_foreign_key "cases", "clients"
  add_foreign_key "client_bluetooth_devices", "clients"
  add_foreign_key "exposures", "cases", column: "cases_id"
  add_foreign_key "exposures", "clients"
  add_foreign_key "subscriptions", "clients"
end
