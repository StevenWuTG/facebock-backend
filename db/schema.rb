# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_02_205939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "friendships", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "friend_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["friend_id"], name: "index_friendships_on_friend_id"
    t.index ["user_id"], name: "index_friendships_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_likes_on_post_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "pals", force: :cascade do |t|
    t.bigint "user1_id"
    t.bigint "user2_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user1_id"], name: "index_pals_on_user1_id"
    t.index ["user2_id"], name: "index_pals_on_user2_id"
  end

  create_table "post_containers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "post_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_post_containers_on_post_id"
    t.index ["user_id"], name: "index_post_containers_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "content"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.boolean "vaccinated"
    t.string "img_url"
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "hometown"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "friendships", "users"
  add_foreign_key "likes", "posts"
  add_foreign_key "likes", "users"
  add_foreign_key "messages", "users"
  add_foreign_key "post_containers", "posts"
  add_foreign_key "post_containers", "users"
  add_foreign_key "posts", "users"
end
