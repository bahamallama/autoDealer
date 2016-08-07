# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160805233621) do

  create_table "cars", force: :cascade do |t|
    t.integer  "make_id"
    t.integer  "model_id"
    t.integer  "year"
    t.decimal  "price"
    t.string   "carType"
    t.string   "transmission"
    t.string   "interior"
    t.integer  "miles"
    t.string   "drive"
    t.string   "exterior"
    t.string   "vin"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
    t.boolean  "published"
    t.boolean  "featured"
    t.string   "epa"
    t.boolean  "sold"
    t.boolean  "sale"
    t.boolean  "reduced"
  end

  create_table "images", force: :cascade do |t|
    t.string   "extrapic_file_name"
    t.string   "extrapic_content_type"
    t.integer  "extrapic_file_size"
    t.datetime "extrapic_updated_at"
    t.integer  "car_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "makes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "name"
    t.integer  "make_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sites", force: :cascade do |t|
    t.string   "name",       default: "site name"
    t.string   "tag",        default: "tagline on homepage"
    t.string   "contact",    default: "contact information"
    t.text     "about",      default: "about us page information"
    t.string   "location",   default: "location name"
    t.string   "address",    default: "street address"
    t.string   "city",       default: "city"
    t.string   "state",      default: "state"
    t.string   "zip",        default: "zip code"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
