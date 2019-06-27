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

ActiveRecord::Schema.define(version: 2019_06_27_121849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_hours", force: :cascade do |t|
    t.bigint "pharmacy_id"
    t.integer "day"
    t.time "open_time"
    t.time "close_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pharmacy_id"], name: "index_business_hours_on_pharmacy_id"
  end

  create_table "contact_people", force: :cascade do |t|
    t.bigint "pharmacy_id"
    t.string "salutation"
    t.string "title"
    t.string "first_name"
    t.string "last_name"
    t.string "name_addition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pharmacy_id"], name: "index_contact_people_on_pharmacy_id"
  end

  create_table "pharmacies", force: :cascade do |t|
    t.string "name"
    t.string "street_name"
    t.string "house_number"
    t.string "postal_code"
    t.integer "cent_cost_per_phone_call"
    t.string "fax_number"
    t.string "email"
    t.string "website"
    t.string "service_number"
    t.string "facebook_profile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "business_hours", "pharmacies"
  add_foreign_key "contact_people", "pharmacies"
end
