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

ActiveRecord::Schema.define(version: 20160811170336) do

  create_table "participants", force: :cascade do |t|
    t.string   "email"
    t.string   "name_first"
    t.string   "name_last"
    t.string   "phone"
    t.integer  "team_id"
    t.integer  "result_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer  "week_number"
    t.decimal  "weight_loss"
    t.decimal  "weight_loss_percent"
    t.decimal  "overall_weight_loss"
    t.decimal  "overall_weight_loss_percent"
    t.integer  "participant_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["participant_id"], name: "index_results_on_participant_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weigh_ins", force: :cascade do |t|
    t.integer  "participant_id"
    t.integer  "team_id"
    t.decimal  "weight_begin"
    t.decimal  "weight_1"
    t.decimal  "weight_2"
    t.decimal  "weight_3"
    t.decimal  "weight_4"
    t.decimal  "weight_5"
    t.decimal  "weight_6"
    t.decimal  "weight_7"
    t.decimal  "weight_8"
    t.decimal  "weight_9"
    t.decimal  "weight_10"
    t.decimal  "weight_end"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
