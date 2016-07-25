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

ActiveRecord::Schema.define(version: 20160725063104) do

  create_table "pull_requests", force: :cascade do |t|
    t.integer  "number",      null: false
    t.string   "state",       null: false
    t.string   "title",       null: false
    t.integer  "proposer_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["proposer_id"], name: "index_pull_requests_on_proposer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "login",                       null: false
    t.string   "avatar_url"
    t.boolean  "contributor", default: false, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
