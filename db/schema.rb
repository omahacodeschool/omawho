# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150416154907) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "slug",       limit: 255
  end

  create_table "categories_users", id: false, force: :cascade do |t|
    t.integer "category_id"
    t.integer "user_id"
  end

  create_table "embeds", force: :cascade do |t|
    t.string   "link",        limit: 255
    t.integer  "user_id"
    t.string   "description", limit: 255
    t.string   "embed_type",  limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "events", force: :cascade do |t|
    t.text     "description"
    t.string   "location",    limit: 255
    t.string   "name",        limit: 255
    t.string   "link",        limit: 255
    t.string   "venue",       limit: 255
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean  "cancelled"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.boolean  "approved",                default: false
    t.string   "slug",        limit: 255
  end

  create_table "events_users", id: false, force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string   "file",        limit: 255
    t.integer  "user_id"
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           limit: 255, null: false
    t.string   "crypted_password",                limit: 255, null: false
    t.string   "salt",                            limit: 255, null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "remember_me_token",               limit: 255
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token",            limit: 255
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "username",                        limit: 255
    t.string   "first_name",                      limit: 255
    t.string   "last_name",                       limit: 255
    t.boolean  "admin"
    t.text     "bio"
    t.string   "website",                         limit: 255
    t.string   "company",                         limit: 255
    t.string   "company_site",                    limit: 255
    t.string   "facebook",                        limit: 255
    t.string   "twitter",                         limit: 255
    t.string   "pinterest",                       limit: 255
    t.string   "linkedin",                        limit: 255
    t.string   "github",                          limit: 255
    t.string   "googleplus",                      limit: 255
    t.string   "dribbble",                        limit: 255
    t.string   "instagram",                       limit: 255
    t.string   "tumblr",                          limit: 255
    t.string   "tagline",                         limit: 255
    t.integer  "profile_image_id"
    t.string   "avatar"
    t.integer  "category_id"
  end

  add_index "users", ["category_id"], name: "index_users_on_category_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree

  add_foreign_key "users", "categories"
end
