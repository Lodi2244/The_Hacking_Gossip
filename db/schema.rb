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

ActiveRecord::Schema.define(version: 2018_11_01_165111) do

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.string "name"
    t.integer "gossips_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gossips_id"], name: "index_comments_on_gossips_id"
  end

  create_table "gossips", force: :cascade do |t|
    t.string "author"
    t.text "content"
    t.string "anonymous_gossiper"
    t.integer "users_id"
    t.integer "tags_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tags_id"], name: "index_gossips_on_tags_id"
    t.index ["users_id"], name: "index_gossips_on_users_id"
  end

  create_table "gossips_tags", id: false, force: :cascade do |t|
    t.integer "gossip_id", null: false
    t.integer "tag_id", null: false
    t.index ["gossip_id", "tag_id"], name: "index_gossips_tags_on_gossip_id_and_tag_id"
    t.index ["tag_id", "gossip_id"], name: "index_gossips_tags_on_tag_id_and_gossip_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "gossips_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gossips_id"], name: "index_likes_on_gossips_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tags_type"
    t.integer "tags_id"
    t.integer "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tags_type", "tags_id"], name: "index_tags_on_tags_type_and_tags_id"
    t.index ["users_id"], name: "index_tags_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.string "password"
    t.integer "gossips_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gossips_id"], name: "index_users_on_gossips_id"
  end

end
