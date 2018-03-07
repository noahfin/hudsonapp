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

ActiveRecord::Schema.define(version: 20180306194100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string "emails"
    t.string "post_cards"
    t.string "letters_flyers"
    t.string "calls"
    t.integer "amount"
    t.bigint "user_id"
    t.bigint "contact_id"
    t.bigint "project_id"
    t.bigint "todo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_campaigns_on_contact_id"
    t.index ["project_id"], name: "index_campaigns_on_project_id"
    t.index ["todo_id"], name: "index_campaigns_on_todo_id"
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

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

  create_table "marketings", force: :cascade do |t|
    t.string "list"
    t.string "name"
    t.integer "amount"
    t.bigint "user_id"
    t.bigint "project_id"
    t.bigint "todo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_marketings_on_project_id"
    t.index ["todo_id"], name: "index_marketings_on_todo_id"
    t.index ["user_id"], name: "index_marketings_on_user_id"
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

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.string "street_num"
    t.string "street_name"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "zipcode_ext"
    t.string "county"
    t.string "latitude"
    t.string "longitude"
    t.string "address"
    t.string "listing_broker"
    t.boolean "available"
    t.boolean "on_market"
    t.boolean "expired_listing"
    t.string "contact"
    t.bigint "user_id"
    t.bigint "contact_id"
    t.bigint "marketing_id"
    t.bigint "campaign_id"
    t.bigint "todo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_properties_on_campaign_id"
    t.index ["contact_id"], name: "index_properties_on_contact_id"
    t.index ["marketing_id"], name: "index_properties_on_marketing_id"
    t.index ["todo_id"], name: "index_properties_on_todo_id"
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.bigint "contact_id"
    t.bigint "property_id"
    t.bigint "todo_id"
    t.bigint "marketing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_spaces_on_contact_id"
    t.index ["marketing_id"], name: "index_spaces_on_marketing_id"
    t.index ["property_id"], name: "index_spaces_on_property_id"
    t.index ["todo_id"], name: "index_spaces_on_todo_id"
    t.index ["user_id"], name: "index_spaces_on_user_id"
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
    t.integer "assigned"
    t.integer "user_id"
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

  add_foreign_key "campaigns", "contacts"
  add_foreign_key "campaigns", "projects"
  add_foreign_key "campaigns", "todos"
  add_foreign_key "campaigns", "users"
  add_foreign_key "compaines", "users"
  add_foreign_key "contacts", "users"
  add_foreign_key "marketings", "projects"
  add_foreign_key "marketings", "todos"
  add_foreign_key "marketings", "users"
  add_foreign_key "projects", "contacts"
  add_foreign_key "projects", "users"
  add_foreign_key "properties", "campaigns"
  add_foreign_key "properties", "contacts"
  add_foreign_key "properties", "marketings"
  add_foreign_key "properties", "todos"
  add_foreign_key "properties", "users"
  add_foreign_key "spaces", "contacts"
  add_foreign_key "spaces", "marketings"
  add_foreign_key "spaces", "properties"
  add_foreign_key "spaces", "todos"
  add_foreign_key "spaces", "users"
  add_foreign_key "timelines", "users"
end
