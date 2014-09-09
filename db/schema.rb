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

ActiveRecord::Schema.define(version: 20140906013741) do

  create_table "maps", force: true do |t|
    t.string   "name"
    t.string   "file_name"
    t.text     "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "points", force: true do |t|
    t.string   "id_xls"
    t.string   "name"
    t.string   "categorie"
    t.string   "type"
    t.string   "pos_deg_lat"
    t.string   "pos_deg_long"
    t.string   "pos_dec_lat"
    t.string   "pos_dec_long"
    t.string   "add_street"
    t.string   "add_number"
    t.string   "add_district"
    t.string   "add_city"
    t.string   "add_country"
    t.string   "add_phone_1"
    t.string   "add_phone_2"
    t.string   "add_more"
    t.string   "open_hours"
    t.string   "www"
    t.string   "facebook"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.string   "id_xls"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
