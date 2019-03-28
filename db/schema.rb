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

ActiveRecord::Schema.define(version: 2019_03_28_171617) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "congregations", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "country", default: "USA"
    t.string "language", default: "English"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer "placements", default: 0
    t.integer "video_showings", default: 0
    t.integer "hours", default: 0
    t.integer "return_visits", default: 0
    t.integer "bible_studies", default: 0
    t.string "comments", default: ""
    t.string "month"
    t.integer "year"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "telephone"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.bigint "congregation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["congregation_id"], name: "index_users_on_congregation_id"
  end

  add_foreign_key "reports", "users"
  add_foreign_key "users", "congregations"
end
