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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120615154241) do

  create_table "authentications", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contents", :force => true do |t|
    t.date     "date"
    t.string   "title"
    t.text     "entry"
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "friendships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.string   "create"
    t.string   "destroy"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "country"
    t.string   "gender"
    t.string   "status"
    t.string   "looking_for"
    t.string   "shortest_relationship"
    t.string   "longest_relationship"
    t.string   "salt"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "fb_uid"
    t.string   "fb_tokenfields"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
