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

ActiveRecord::Schema.define(version: 20140224034029) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.integer  "project_profile_id"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modes", force: true do |t|
    t.integer  "project_profile_id"
    t.boolean  "project"
    t.boolean  "program_part"
    t.boolean  "program"
    t.string   "another"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_profiles", force: true do |t|
    t.integer  "category_id",      default: 1
    t.string   "name"
    t.string   "validity"
    t.string   "region"
    t.string   "institution_name"
    t.text     "description"
    t.text     "objectives"
    t.text     "scale"
    t.text     "context"
    t.text     "disciplines"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_scopes", force: true do |t|
    t.integer  "project_profile_id"
    t.boolean  "research"
    t.boolean  "actions"
    t.boolean  "policy"
    t.string   "another"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_types", force: true do |t|
    t.integer  "project_profile_id"
    t.boolean  "university_research"
    t.boolean  "government_institution"
    t.boolean  "ngo"
    t.boolean  "several"
    t.string   "another"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.integer  "category_id"
    t.integer  "answer_type_id"
    t.string   "description"
    t.string   "language_key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "thematics", force: true do |t|
    t.integer  "project_profile_id"
    t.boolean  "minery"
    t.boolean  "pesticides"
    t.boolean  "occupational_health"
    t.boolean  "account_management"
    t.boolean  "solid_waste"
    t.boolean  "public_health"
    t.boolean  "animal_health"
    t.string   "another"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
