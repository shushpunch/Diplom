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

ActiveRecord::Schema.define(:version => 20120108194037) do

  create_table "branches", :force => true do |t|
    t.integer  "document_id"
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chairs", :force => true do |t|
    t.integer  "document_id"
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", :force => true do |t|
    t.text     "comment"
    t.text     "body"
    t.integer  "reason_id"
    t.integer  "type_id"
    t.integer  "branch_id"
    t.integer  "chair_id"
    t.string   "reas"
    t.integer  "user_id"
    t.integer  "aspirant_id"
    t.integer  "dstate"
    t.string   "number"
    t.date     "cdate"
    t.date     "sdate"
    t.string   "user_name"
    t.string   "user_surname"
    t.string   "user_middlename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents_users", :id => false, :force => true do |t|
    t.integer "document_id"
    t.integer "user_id"
  end

  create_table "reasons", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", :force => true do |t|
    t.integer  "document_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "types", ["document_id"], :name => "index_types_on_document_id"

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "name"
    t.string   "surname"
    t.string   "middlename"
    t.string   "email"
    t.date     "date_birth"
    t.string   "state"
    t.integer  "phone"
    t.string   "lform"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
