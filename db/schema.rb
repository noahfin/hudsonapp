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

ActiveRecord::Schema.define(version: 20180305050912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "compaines", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.string "phone_number_2"
    t.string "fax"
    t.string "website"
    t.boolean "owns"
    t.boolean "rents"
    t.string "primary_idustry"
    t.string "secondary_idustry"
    t.integer "SF_occupying"
    t.string "email"
    t.text "notes"
    t.string "sic_code"
    t.boolean "data_checked"
    t.string "type_of_location"
    t.string "listing_agent"
    t.string "suit"
    t.integer "total_employees"
    t.string "year_founded"
    t.text "follow_up"
    t.boolean "active"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_compaines_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.string "phone_number_2"
    t.string "fax"
    t.string "website"
    t.boolean "owns"
    t.boolean "rents"
    t.string "primary_idustry"
    t.string "secondary_idustry"
    t.integer "SF_occupying"
    t.string "email"
    t.text "notes"
    t.string "sic_code"
    t.boolean "data_checked"
    t.string "type_of_location"
    t.string "listing_agent"
    t.string "suit"
    t.integer "total_employees"
    t.string "year_founded"
    t.text "follow_up"
    t.boolean "active"
    t.string "references"
    t.string "user"
    t.string "contact"
    t.string "project"
    t.string "todo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "prefex"
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "suffix"
    t.string "title"
    t.string "cell_number"
    t.string "business_email"
    t.string "personal_email"
    t.string "Additional_email"
    t.text "notes"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "street_number"
    t.string "street_name"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "zipcode_ext"
    t.string "county"
    t.string "latitude"
    t.string "property_address"
    t.string "known_as"
    t.text "notes"
    t.bigint "user_id"
    t.bigint "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_projects_on_contact_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "stored_locations", force: :cascade do |t|
    t.string "token"
    t.integer "user_id"
  end

  create_table "timelines", force: :cascade do |t|
    t.string "event"
    t.string "author"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_timelines_on_user_id"
  end

  create_table "todos", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "finished"
    t.string "user"
    t.string "references"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "stored_location"
    t.string "title"
    t.string "address"
    t.string "first_name"
    t.string "last_name"
    t.string "company"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "visitors", force: :cascade do |t|
    t.string "token"
    t.integer "user_id"
    t.string "email"
    t.string "name"
    t.string "password"
    t.string "password_confirmation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "compaines", "users"
  add_foreign_key "contacts", "users"
  add_foreign_key "projects", "contacts"
  add_foreign_key "projects", "users"
  add_foreign_key "timelines", "users"
end
