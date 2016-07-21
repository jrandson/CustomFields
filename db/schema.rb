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

ActiveRecord::Schema.define(version: 20160720024051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contacts_on_user_id", using: :btree
  end

  create_table "dropdown_values", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.string   "value"
    t.integer  "dropdown_id"
    t.integer  "contact_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["contact_id"], name: "index_dropdown_values_on_contact_id", using: :btree
    t.index ["dropdown_id"], name: "index_dropdown_values_on_dropdown_id", using: :btree
  end

  create_table "dropdowns", force: :cascade do |t|
    t.string   "name"
    t.text     "options"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_dropdowns_on_user_id", using: :btree
  end

  create_table "text_area_values", force: :cascade do |t|
    t.string   "name"
    t.text     "value"
    t.integer  "contact_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "text_area_id"
    t.index ["contact_id"], name: "index_text_area_values_on_contact_id", using: :btree
  end

  create_table "text_areas", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_text_areas_on_user_id", using: :btree
  end

  create_table "text_field_values", force: :cascade do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "text_field_id"
    t.integer  "contact_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["contact_id"], name: "index_text_field_values_on_contact_id", using: :btree
    t.index ["text_field_id"], name: "index_text_field_values_on_text_field_id", using: :btree
  end

  create_table "text_fields", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_text_fields_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "password"
    t.string   "password_confirmation"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  add_foreign_key "contacts", "users"
  add_foreign_key "dropdown_values", "contacts"
  add_foreign_key "dropdown_values", "dropdowns"
  add_foreign_key "dropdowns", "users"
  add_foreign_key "text_area_values", "contacts"
  add_foreign_key "text_areas", "users"
  add_foreign_key "text_field_values", "contacts"
  add_foreign_key "text_field_values", "text_fields"
  add_foreign_key "text_fields", "users"
end
