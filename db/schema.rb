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

ActiveRecord::Schema.define(version: 20160812070055) do

  create_table "agreements", force: true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.integer  "code"
    t.integer  "orderer_id"
    t.time     "constraction_date"
    t.time     "complketion_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "calendars", force: true do |t|
    t.date     "hiduke"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.boolean  "holiday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orderers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", force: true do |t|
    t.string   "name"
    t.string   "office"
    t.integer  "order"
    t.decimal  "wage"
    t.date     "birthday"
    t.date     "hire_date"
    t.date     "leaving_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "works", force: true do |t|
    t.integer  "calendar_id"
    t.integer  "staff_id"
    t.integer  "agreement_id"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "work_time"
    t.integer  "over_time"
    t.integer  "late_night_over_time"
    t.integer  "paid_holiday"
    t.integer  "agency_holiday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
