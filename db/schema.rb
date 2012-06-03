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

ActiveRecord::Schema.define(:version => 20120603201705) do

  create_table "invitations", :force => true do |t|
    t.integer  "user_id"
    t.string   "request_id"
    t.string   "guest_id"
    t.datetime "accepted_at"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "invitations", ["accepted_at"], :name => "index_invitations_on_accepted_at"
  add_index "invitations", ["guest_id"], :name => "index_invitations_on_guest_id"
  add_index "invitations", ["request_id"], :name => "index_invitations_on_request_id"
  add_index "invitations", ["user_id"], :name => "index_invitations_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "locale"
    t.string   "image_url"
    t.string   "large_image_url"
    t.string   "small_image_url"
    t.string   "square_image_url"
    t.string   "facebook_idx"
    t.integer  "votes_count"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["facebook_idx"], :name => "index_users_on_facebook_idx"
  add_index "users", ["locale"], :name => "index_users_on_locale"
  add_index "users", ["username"], :name => "index_users_on_username"
  add_index "users", ["votes_count"], :name => "index_users_on_votes_count"

end
