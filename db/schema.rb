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

ActiveRecord::Schema.define(version: 2018_07_23_090815) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "badges", force: :cascade do |t|
    t.string "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diabetes", force: :cascade do |t|
    t.float "before"
    t.float "after"
    t.float "fasting"
    t.float "hba1c"
    t.bigint "patient_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id_id"], name: "index_diabetes_on_patient_id_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "age"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hbps", force: :cascade do |t|
    t.float "systolic"
    t.float "diastolic"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_hbps_on_patient_id"
  end

  create_table "obeses", force: :cascade do |t|
    t.float "weight"
    t.float "height"
    t.float "bmi"
    t.float "waist_circumference"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_obeses_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "ic"
    t.float "height"
    t.float "weight"
    t.integer "age"
    t.date "birthday"
    t.bigint "obesity_id"
    t.bigint "high_blood_pressure_id"
    t.bigint "diabetes_id"
    t.bigint "doctor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diabetes_id"], name: "index_patients_on_diabetes_id"
    t.index ["doctor_id"], name: "index_patients_on_doctor_id"
    t.index ["high_blood_pressure_id"], name: "index_patients_on_high_blood_pressure_id"
    t.index ["obesity_id"], name: "index_patients_on_obesity_id"
  end

  add_foreign_key "hbps", "patients"
end
