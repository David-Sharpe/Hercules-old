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

ActiveRecord::Schema.define(version: 20151121190931) do

  create_table "resistance_exercises", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.decimal  "resistance"
    t.string   "unit",        limit: 255
    t.integer  "repetitions"
    t.integer  "sets"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "workout_id"
  end

  add_index "resistance_exercises", ["workout_id"], name: "index_resistance_exercises_on_workout_id"

  create_table "resistance_workouts", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resistance_workouts", ["user_id"], name: "index_resistance_workouts_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "workout_templates", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id_id"
    t.integer  "period_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "workout_templates", ["period_id"], name: "index_workout_templates_on_period_id"
  add_index "workout_templates", ["user_id_id"], name: "index_workout_templates_on_user_id_id"

end
