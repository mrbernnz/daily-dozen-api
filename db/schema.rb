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

ActiveRecord::Schema.define(version: 20171118024611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "password_digest"
    t.string "token"
  end

  create_table "exercises", force: :cascade do |t|
    t.bigint "workout_id"
    t.string "exercise_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workout_id"], name: "index_exercises_on_workout_id"
  end

  create_table "sets", force: :cascade do |t|
    t.bigint "exercise_id"
    t.integer "number"
    t.integer "weight"
    t.string "unit"
    t.integer "rep"
    t.index ["exercise_id"], name: "index_sets_on_exercise_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.bigint "athlete_id"
    t.string "workout_name", null: false
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["athlete_id"], name: "index_workouts_on_athlete_id"
  end

  add_foreign_key "exercises", "workouts"
  add_foreign_key "sets", "exercises"
  add_foreign_key "workouts", "athletes"
end
