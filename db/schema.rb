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

ActiveRecord::Schema.define(version: 20150313224204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brackets", force: :cascade do |t|
    t.string   "M0A"
    t.string   "M0B"
    t.string   "M0C"
    t.string   "M0D"
    t.string   "M0E"
    t.string   "M0F"
    t.string   "M0G"
    t.string   "M0H"
    t.string   "M0I"
    t.string   "M0J"
    t.string   "M0K"
    t.string   "M0L"
    t.string   "M0M"
    t.string   "M0N"
    t.string   "M0O"
    t.string   "M0P"
    t.string   "M1A"
    t.string   "M1B"
    t.string   "M1C"
    t.string   "M1D"
    t.string   "M1E"
    t.string   "M1F"
    t.string   "M1G"
    t.string   "M1H"
    t.string   "M2A"
    t.string   "M2B"
    t.string   "M2C"
    t.string   "M2D"
    t.string   "M3A"
    t.string   "M3B"
    t.string   "M4A"
    t.string   "S0A"
    t.string   "S0B"
    t.string   "S0C"
    t.string   "S0D"
    t.string   "S0E"
    t.string   "S0F"
    t.string   "S0G"
    t.string   "S0H"
    t.string   "S0I"
    t.string   "S0J"
    t.string   "S0K"
    t.string   "S0L"
    t.string   "S0M"
    t.string   "S0N"
    t.string   "S0O"
    t.string   "S0P"
    t.string   "S1A"
    t.string   "S1B"
    t.string   "S1C"
    t.string   "S1D"
    t.string   "S1E"
    t.string   "S1G"
    t.string   "S1H"
    t.string   "S2A"
    t.string   "S2B"
    t.string   "S2C"
    t.string   "S2D"
    t.string   "S3A"
    t.string   "S3B"
    t.string   "S4A"
    t.string   "W0A"
    t.string   "W0B"
    t.string   "W0C"
    t.string   "W0D"
    t.string   "W0E"
    t.string   "W0F"
    t.string   "W0G"
    t.string   "W0H"
    t.string   "W0I"
    t.string   "W0J"
    t.string   "W0K"
    t.string   "W0L"
    t.string   "W0M"
    t.string   "W0N"
    t.string   "W0O"
    t.string   "W0P"
    t.string   "W1A"
    t.string   "W1B"
    t.string   "W1C"
    t.string   "W1D"
    t.string   "W1E"
    t.string   "W1F"
    t.string   "W1G"
    t.string   "W1H"
    t.string   "W2A"
    t.string   "W2B"
    t.string   "W2C"
    t.string   "W2D"
    t.string   "W3A"
    t.string   "W3B"
    t.string   "W4A"
    t.string   "E0A"
    t.string   "E0B"
    t.string   "E0C"
    t.string   "E0D"
    t.string   "E0E"
    t.string   "E0F"
    t.string   "E0G"
    t.string   "E0H"
    t.string   "E0I"
    t.string   "E0J"
    t.string   "E0K"
    t.string   "E0L"
    t.string   "E0M"
    t.string   "E0N"
    t.string   "E0O"
    t.string   "E0P"
    t.string   "E1A"
    t.string   "E1B"
    t.string   "E1C"
    t.string   "E1D"
    t.string   "E1E"
    t.string   "E1F"
    t.string   "E1G"
    t.string   "E1H"
    t.string   "E2A"
    t.string   "E2B"
    t.string   "E2C"
    t.string   "E2D"
    t.string   "E3A"
    t.string   "E3B"
    t.string   "E4A"
    t.string   "M5S"
    t.string   "W5E"
    t.string   "W6W"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.integer  "user_id"
    t.integer  "organization_id"
  end

  add_index "brackets", ["user_id"], name: "index_brackets_on_user_id", using: :btree

  create_table "matches", force: :cascade do |t|
    t.string   "winner"
    t.string   "team1"
    t.string   "team2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "ranking"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "organization_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
