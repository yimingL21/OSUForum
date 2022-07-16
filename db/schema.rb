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

ActiveRecord::Schema.define(version: 2022_07_16_064721) do

  create_table "comments", force: :cascade do |t|
    t.datetime "create_time"
    t.text "content"
    t.string "frame_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.integer "post_id", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.datetime "create_time"
    t.text "content"
    t.text "comment_ids"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.integer "sub_forum_id", null: false
    t.index ["sub_forum_id"], name: "index_posts_on_sub_forum_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "sub_forums", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "number_of_posts"
    t.text "post_ids"
    t.text "admin_ids"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.boolean "admin"
    t.text "introduction"
    t.text "post_ids"
    t.text "comment_ids"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "posts", "sub_forums"
  add_foreign_key "posts", "users"
end
