# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_02_23_124204) do
  create_table "divisions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "team"
    t.integer "employee_id"
    t.index ["employee_id"], name: "index_divisions_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "job"
    t.float "salary"
    t.string "employee_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "team_id"
    t.integer "division_id"
    t.index ["division_id"], name: "index_employees_on_division_id"
    t.index ["team_id"], name: "index_employees_on_team_id"
  end

  create_table "targets", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "start_date"
    t.date "finish_date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "team_id"
    t.index ["team_id"], name: "index_targets_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "members"
    t.string "team_lead"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "division_id"
    t.index ["division_id"], name: "index_teams_on_division_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "divisions", "employees"
  add_foreign_key "employees", "divisions"
  add_foreign_key "employees", "teams"
  add_foreign_key "targets", "teams"
  add_foreign_key "teams", "divisions"
end
