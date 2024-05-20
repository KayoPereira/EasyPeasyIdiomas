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

ActiveRecord::Schema[7.0].define(version: 2024_05_18_135001) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lesson_comments", force: :cascade do |t|
    t.text "content"
    t.bigint "lesson_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_lesson_comments_on_lesson_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "student_id"
    t.bigint "teacher_id"
    t.datetime "day_hour"
    t.index ["student_id"], name: "index_lessons_on_student_id"
    t.index ["teacher_id"], name: "index_lessons_on_teacher_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "price"
    t.string "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "student_id", null: false
    t.index ["student_id"], name: "index_payments_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer "monthly_lessons"
    t.string "language"
    t.string "level"
    t.integer "class_given", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "payday"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.string "first_name"
    t.string "last_name"
    t.string "identification_number"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wordings", force: :cascade do |t|
    t.text "text"
    t.string "level"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "lesson_comments", "lessons"
  add_foreign_key "lessons", "users", column: "student_id"
  add_foreign_key "lessons", "users", column: "teacher_id"
  add_foreign_key "payments", "students"
  add_foreign_key "students", "users"
end
