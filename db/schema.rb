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

ActiveRecord::Schema.define(version: 20141219103655) do

  create_table "experiences", force: true do |t|
    t.integer  "user_id"
    t.string   "observation"
    t.string   "request"
    t.string   "memo"
    t.string   "status"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiences", ["deleted_at"], name: "index_experiences_on_deleted_at"
  add_index "experiences", ["user_id"], name: "index_experiences_on_user_id"

  create_table "feeling_cards", force: true do |t|
    t.string   "super_category"
    t.string   "category"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feelings", force: true do |t|
    t.integer  "user_id"
    t.integer  "feeling_card_id"
    t.integer  "experience_id"
    t.string   "super_category"
    t.string   "category"
    t.string   "note"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feelings", ["deleted_at"], name: "index_feelings_on_deleted_at"
  add_index "feelings", ["experience_id"], name: "index_feelings_on_experience_id"
  add_index "feelings", ["feeling_card_id"], name: "index_feelings_on_feeling_card_id"
  add_index "feelings", ["user_id"], name: "index_feelings_on_user_id"

  create_table "need_cards", force: true do |t|
    t.string   "category"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "needs", force: true do |t|
    t.integer  "user_id"
    t.integer  "need_card_id"
    t.integer  "feeling_id"
    t.string   "category"
    t.string   "note"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "needs", ["deleted_at"], name: "index_needs_on_deleted_at"
  add_index "needs", ["feeling_id"], name: "index_needs_on_feeling_id"
  add_index "needs", ["need_card_id"], name: "index_needs_on_need_card_id"
  add_index "needs", ["user_id"], name: "index_needs_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

end
