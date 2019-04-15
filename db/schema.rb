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

ActiveRecord::Schema.define(version: 2019_04_15_152425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.boolean "anonymous"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "question_id"
    t.index ["question_id"], name: "index_comments_on_question_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "comments_id"
    t.bigint "questions_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "question_id"
    t.bigint "comment_id"
    t.index ["comment_id"], name: "index_likes_on_comment_id"
    t.index ["comments_id"], name: "index_likes_on_comments_id"
    t.index ["question_id"], name: "index_likes_on_question_id"
    t.index ["questions_id"], name: "index_likes_on_questions_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.boolean "anonymous"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "handle", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["handle"], name: "index_users_on_handle", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "comments", "questions"
  add_foreign_key "comments", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "likes", "comments"
  add_foreign_key "likes", "comments", column: "comments_id"
  add_foreign_key "likes", "questions"
  add_foreign_key "likes", "questions", column: "questions_id"
  add_foreign_key "likes", "users"
  add_foreign_key "questions", "users"
end
