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

ActiveRecord::Schema.define(version: 20150316074301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brackets", force: :cascade do |t|
    t.string   "0"
    t.string   "1"
    t.string   "2"
    t.string   "3"
    t.string   "4"
    t.string   "5"
    t.string   "6"
    t.string   "7"
    t.string   "8"
    t.string   "9"
    t.string   "10"
    t.string   "11"
    t.string   "12"
    t.string   "13"
    t.string   "14"
    t.string   "15"
    t.string   "16"
    t.string   "17"
    t.string   "18"
    t.string   "19"
    t.string   "20"
    t.string   "21"
    t.string   "22"
    t.string   "23"
    t.string   "24"
    t.string   "25"
    t.string   "26"
    t.string   "27"
    t.string   "28"
    t.string   "29"
    t.string   "30"
    t.string   "31"
    t.string   "32"
    t.string   "33"
    t.string   "34"
    t.string   "35"
    t.string   "36"
    t.string   "37"
    t.string   "38"
    t.string   "39"
    t.string   "40"
    t.string   "41"
    t.string   "42"
    t.string   "43"
    t.string   "44"
    t.string   "45"
    t.string   "46"
    t.string   "47"
    t.string   "48"
    t.string   "49"
    t.string   "50"
    t.string   "51"
    t.string   "52"
    t.string   "53"
    t.string   "54"
    t.string   "55"
    t.string   "56"
    t.string   "57"
    t.string   "58"
    t.string   "59"
    t.string   "60"
    t.string   "61"
    t.string   "62"
    t.string   "63"
    t.string   "64"
    t.string   "65"
    t.string   "66"
    t.string   "67"
    t.string   "68"
    t.string   "69"
    t.string   "70"
    t.string   "71"
    t.string   "72"
    t.string   "73"
    t.string   "74"
    t.string   "75"
    t.string   "76"
    t.string   "77"
    t.string   "78"
    t.string   "79"
    t.string   "80"
    t.string   "81"
    t.string   "82"
    t.string   "83"
    t.string   "84"
    t.string   "85"
    t.string   "86"
    t.string   "87"
    t.string   "88"
    t.string   "89"
    t.string   "90"
    t.string   "91"
    t.string   "92"
    t.string   "93"
    t.string   "94"
    t.string   "95"
    t.string   "96"
    t.string   "97"
    t.string   "98"
    t.string   "99"
    t.string   "100"
    t.string   "101"
    t.string   "102"
    t.string   "103"
    t.string   "104"
    t.string   "105"
    t.string   "106"
    t.string   "107"
    t.string   "108"
    t.string   "109"
    t.string   "110"
    t.string   "111"
    t.string   "112"
    t.string   "113"
    t.string   "114"
    t.string   "115"
    t.string   "116"
    t.string   "117"
    t.string   "118"
    t.string   "119"
    t.string   "120"
    t.string   "121"
    t.string   "122"
    t.string   "123"
    t.string   "124"
    t.string   "125"
    t.string   "126"
    t.integer  "user_id"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
