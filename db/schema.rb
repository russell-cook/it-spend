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

ActiveRecord::Schema.define(version: 20140301214822) do

  create_table "admins", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "surveys", force: true do |t|
    t.string   "completing_name"
    t.string   "completing_title"
    t.string   "completing_email"
    t.string   "contact_name"
    t.string   "contact_title"
    t.string   "contact_email"
    t.integer  "num_servers"
    t.text     "type_servers"
    t.integer  "num_locations"
    t.boolean  "colocated"
    t.boolean  "dedicated"
    t.boolean  "state_owned"
    t.integer  "state_owned_sqft"
    t.boolean  "leased"
    t.integer  "leased_sqft"
    t.boolean  "access_control"
    t.boolean  "ups"
    t.boolean  "envir_ctrl"
    t.boolean  "generator"
    t.boolean  "fire"
    t.boolean  "data_server"
    t.boolean  "data_san"
    t.integer  "total_capacity"
    t.integer  "used_capacity"
    t.boolean  "backup"
    t.boolean  "local_backup"
    t.boolean  "central_backup"
    t.string   "freq_backup"
    t.string   "freq_backup_other"
    t.string   "who_manages"
    t.string   "who_manages_other"
    t.boolean  "hard_maint"
    t.integer  "hard_maint_amt"
    t.boolean  "soft_maint"
    t.integer  "soft_maint_amt"
    t.boolean  "contractor_support"
    t.integer  "contractor_support_amt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "surveys", ["user_id"], name: "index_surveys_on_user_id"

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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
