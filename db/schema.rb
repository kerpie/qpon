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

ActiveRecord::Schema.define(version: 20131205221014) do

  create_table "admins", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "dni"
    t.string   "nickname"
    t.string   "mail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consortia", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coupon_states", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coupon_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coupons", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.float    "discount"
    t.integer  "coupon_type_id"
    t.integer  "coupon_state_id"
    t.integer  "admin_id"
    t.integer  "consortium_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "store_phones", force: true do |t|
    t.string   "phone"
    t.integer  "store_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "store_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "mail"
    t.text     "reference"
    t.boolean  "has_parking"
    t.boolean  "has_valet"
    t.integer  "store_type_id"
    t.integer  "consortium_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "mail"
    t.date     "birthdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
