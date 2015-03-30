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

ActiveRecord::Schema.define(version: 20150330162637) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_users", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password",                null: false
    t.string   "salt",                            null: false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin"
    t.text     "bio"
    t.string   "website"
    t.string   "company"
    t.string   "company_site"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "pinterest"
    t.string   "linkedin"
    t.string   "github"
    t.string   "googleplus"
    t.string   "dribbble"
    t.string   "instagram"
    t.string   "tumblr"
    t.string   "tagline"
    t.string   "profile_image_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
