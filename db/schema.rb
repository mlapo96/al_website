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

ActiveRecord::Schema.define(version: 20190219215559) do

  create_table "attachments", force: :cascade do |t|
    t.string "atmt_type"
    t.string "atmt_name"
    t.string "attaches_to"
    t.string "color"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guns", force: :cascade do |t|
    t.string "gun_name"
    t.string "gun_type"
    t.string "ammo_type"
    t.string "gun_description"
    t.integer "gun_body"
    t.integer "gun_headshot"
    t.integer "mag_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "legends", force: :cascade do |t|
    t.string "legend_name"
    t.string "legend_desc"
    t.string "legend_passive_name"
    t.string "legend_passive_desc"
    t.string "legend_ability_name"
    t.string "legend_ability_desc"
    t.string "legend_ult_name"
    t.string "legend_ult_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
