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

ActiveRecord::Schema.define(version: 20160928194444) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "downvotes", force: :cascade do |t|
    t.integer  "answer_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feed_categories", force: :cascade do |t|
    t.integer  "feed_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "feed_votes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "feed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feeds", force: :cascade do |t|
    t.string   "image"
    t.string   "content"
    t.integer  "vote_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "title"
    t.text     "summary"
  end

  create_table "house_badges", force: :cascade do |t|
    t.integer  "house_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "house_bios", force: :cascade do |t|
    t.integer  "house_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "house_images", force: :cascade do |t|
    t.integer  "house_id"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "house_stories", force: :cascade do |t|
    t.integer  "house_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "housepages", force: :cascade do |t|
    t.integer  "house_id"
    t.integer  "character_id"
    t.text     "bio"
    t.string   "image"
    t.string   "banner"
    t.string   "name"
    t.text     "story"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string   "name"
    t.string   "motto"
    t.string   "background_image"
    t.string   "family_tree_image"
    t.text     "history_description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "honor"
  end

  create_table "icons", force: :cascade do |t|
    t.string   "image"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "story_likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "upvotes", force: :cascade do |t|
    t.integer  "answer_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_stories", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.integer  "house_id"
    t.integer  "honor"
    t.string   "profile_pic"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "user_name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
