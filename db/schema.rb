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

ActiveRecord::Schema.define(:version => 20141002044121) do

  create_table "course_nines", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "golf_course_id"
    t.integer  "course_id"
  end

  create_table "course_relationships", :force => true do |t|
    t.integer  "tee_id"
    t.integer  "course_nine_id"
    t.integer  "pos"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "course_relationships", ["course_nine_id"], :name => "index_course_relationships_on_course_nine_id"
  add_index "course_relationships", ["tee_id", "course_nine_id"], :name => "index_course_relationships_on_tee_id_and_course_nine_id", :unique => true
  add_index "course_relationships", ["tee_id"], :name => "index_course_relationships_on_tee_id"

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "golf_course_id"
  end

  create_table "golf_courses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "holes", :force => true do |t|
    t.integer  "golf_course_id"
    t.integer  "tee_id"
    t.integer  "num"
    t.integer  "par"
    t.integer  "distance"
    t.integer  "handicap"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "course_nine_id"
    t.integer  "ladies_par"
    t.integer  "ladies_handicap"
    t.integer  "course_id"
  end

  create_table "tee_courses", :force => true do |t|
    t.integer  "tee_id"
    t.integer  "coursenine_id"
    t.integer  "position"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "tee_courses", ["coursenine_id"], :name => "index_tee_courses_on_coursenine_id"
  add_index "tee_courses", ["tee_id", "coursenine_id", "position"], :name => "index_tee_courses_on_tee_id_and_coursenine_id_and_position", :unique => true
  add_index "tee_courses", ["tee_id"], :name => "index_tee_courses_on_tee_id"

  create_table "tees", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "par"
    t.integer  "distance"
    t.integer  "golf_course_id"
    t.float    "rating"
    t.float    "slope"
    t.integer  "pos"
    t.integer  "course_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
