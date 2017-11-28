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

ActiveRecord::Schema.define(version: 20171128191553) do

  create_table "jobs", force: :cascade do |t|
    t.string "description"
    t.string "origin"
    t.string "destination"
    t.integer "cost"
    t.integer "containers"
    t.integer "ship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["ship_id"], name: "index_jobs_on_ship_id"
  end

  create_table "ship_jobs", force: :cascade do |t|
    t.integer "job_id"
    t.integer "ship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_ship_jobs_on_job_id"
    t.index ["ship_id"], name: "index_ship_jobs_on_ship_id"
  end

  create_table "ships", force: :cascade do |t|
    t.string "name"
    t.integer "containers"
    t.string "location"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_ships_on_job_id"
  end

end
