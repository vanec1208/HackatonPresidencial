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

ActiveRecord::Schema.define(version: 20140510025626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |t|
    t.integer  "candidate_id"
    t.text     "answer"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidates", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "timeline"
    t.string   "twitter"
    t.string   "age"
    t.text     "party"
    t.string   "webpage"
  end

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.string   "start"
    t.string   "end"
    t.string   "timezone"
    t.integer  "candidate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.text     "question"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: true do |t|
    t.integer  "answer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "studies", force: true do |t|
    t.string   "university"
    t.string   "study"
    t.integer  "candidate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tips", force: true do |t|
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "users", force: true do |t|
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "versions", force: true do |t|
    t.integer  "candidates"
    t.integer  "questions"
    t.integer  "tips"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
  end

  create_table "votes", force: true do |t|
    t.integer  "candidate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
