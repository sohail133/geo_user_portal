# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_11_08_220647) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "continents", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.bigint "continent_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["continent_id"], name: "index_countries_on_continent_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "users", force: :cascade do |t|
    t.bigint "continent_id", null: false
    t.bigint "country_id", null: false
    t.bigint "state_id", null: false
    t.bigint "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["continent_id"], name: "index_users_on_continent_id"
    t.index ["country_id"], name: "index_users_on_country_id"
    t.index ["state_id"], name: "index_users_on_state_id"
  end

  add_foreign_key "cities", "states"
  add_foreign_key "countries", "continents"
  add_foreign_key "states", "countries"
  add_foreign_key "users", "cities"
  add_foreign_key "users", "continents"
  add_foreign_key "users", "countries"
  add_foreign_key "users", "states"
end
