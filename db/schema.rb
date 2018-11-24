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

ActiveRecord::Schema.define(version: 2018_07_06_193643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chats", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "conversation_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.integer "user_id"
    t.string "user_name"
    t.integer "resource_id"
    t.integer "category_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.string "title"
    t.bigint "wrestling_resource_id"
    t.integer "category_id"
  end

  create_table "current_users", force: :cascade do |t|
    t.string "user_name"
  end

  create_table "messages", force: :cascade do |t|
    t.string "text"
    t.integer "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_name"
    t.integer "user_id"
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
  end

  create_table "old_stuffs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.string "image"
    t.integer "match_id"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_old_stuffs_on_user_id"
  end

  create_table "recommendations", force: :cascade do |t|
    t.string "review"
    t.integer "user_id"
  end

  create_table "user_chats", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "chats_id"
  end

  create_table "user_resources", force: :cascade do |t|
    t.integer "user_id"
    t.string "slug"
    t.string "wrestling_name"
    t.string "image_url"
    t.string "source_link"
    t.string "comments"
    t.integer "check_out_count"
    t.integer "match_id"
    t.integer "wrestling_resource_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "password_confirmation"
  end

end
