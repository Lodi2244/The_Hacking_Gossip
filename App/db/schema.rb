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

ActiveRecord::Schema.define(version: 2018_10_29_123546) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "zip_code"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cities_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "users_id"
    t.string "commenteable_type"
    t.integer "commenteable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commenteable_type", "commenteable_id"], name: "index_comments_on_commenteable_type_and_commenteable_id"
    t.index ["users_id"], name: "index_comments_on_users_id"
  end

  create_table "gossips", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "date"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_gossips_on_tag_id"
  end

  create_table "gossips_tags", id: false, force: :cascade do |t|
    t.integer "gossip_id", null: false
    t.integer "tag_id", null: false
    t.index ["gossip_id", "tag_id"], name: "index_gossips_tags_on_gossip_id_and_tag_id"
    t.index ["tag_id", "gossip_id"], name: "index_gossips_tags_on_tag_id_and_gossip_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.string "likeable_type"
    t.integer "likeable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["likeable_type", "likeable_id"], name: "index_likes_on_likeable_type_and_likeable_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "multirecipients", force: :cascade do |t|
    t.integer "users_id"
    t.integer "private_messages_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["private_messages_id"], name: "index_multirecipients_on_private_messages_id"
    t.index ["users_id"], name: "index_multirecipients_on_users_id"
  end

  create_table "private_messages", force: :cascade do |t|
    t.text "content"
    t.datetime "date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_private_messages_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.integer "gossip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gossip_id"], name: "index_tags_on_gossip_id"
    t.index ["user_id"], name: "index_tags_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.string "email"
    t.integer "age"
    t.integer "city_id"
    t.integer "private_message_id"
    t.integer "gossip_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["gossip_id"], name: "index_users_on_gossip_id"
    t.index ["private_message_id"], name: "index_users_on_private_message_id"
    t.index ["tag_id"], name: "index_users_on_tag_id"
  end

end
