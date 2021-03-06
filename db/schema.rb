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

ActiveRecord::Schema.define(version: 20130825020604) do

  create_table "athletes", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "gender"
    t.integer  "age"
    t.integer  "height"
    t.integer  "weight"
    t.string   "affiliation"
    t.integer  "competition_id"
    t.integer  "competition_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "competition_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "competitions", force: true do |t|
    t.string   "name"
    t.string   "when"
    t.string   "where"
    t.string   "description"
    t.string   "competition_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "event_athletes", force: true do |t|
    t.string   "result"
    t.float    "score"
    t.integer  "event_rank"
    t.integer  "athlete_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "rank_by_small"
    t.decimal  "event_weight",   default: 1.0
    t.integer  "competition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
