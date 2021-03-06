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

ActiveRecord::Schema.define(version: 20150628085726) do

  create_table "blockedcafes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "cafe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cafefeatures", force: :cascade do |t|
    t.integer  "cafe_id"
    t.string   "featurename"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cafephotos", force: :cascade do |t|
    t.integer  "cafe_id"
    t.string   "photourl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cafes", force: :cascade do |t|
    t.string   "cafename"
    t.string   "address"
    t.text     "goforits"
    t.integer  "phone"
    t.string   "hashtags"
    t.text     "features"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.boolean  "emailverified"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "visitedcafe", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "cafe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wishlistedcafes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "cafe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
