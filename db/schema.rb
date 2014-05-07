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

ActiveRecord::Schema.define(version: 20140507185845) do

  create_table "beers", force: true do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.integer  "image_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "beers", ["brand_id"], name: "index_beers_on_brand_id"
  add_index "beers", ["image_id"], name: "index_beers_on_image_id"

  create_table "brands", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "quest_beers", id: false, force: true do |t|
    t.integer  "questionnaire_id", null: false
    t.integer  "beer_id",          null: false
    t.integer  "taste"
    t.integer  "color"
    t.integer  "price"
    t.integer  "design"
    t.float    "average"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quest_beers", ["questionnaire_id", "beer_id"], name: "index_quest_beers_on_questionnaire_id_and_beer_id", unique: true

  create_table "questionnaires", force: true do |t|
    t.integer  "age"
    t.integer  "sex_id"
    t.string   "city"
    t.integer  "education_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questionnaires", ["education_id"], name: "index_questionnaires_on_education_id"
  add_index "questionnaires", ["sex_id"], name: "index_questionnaires_on_sex_id"

  create_table "ratings", force: true do |t|
    t.integer  "beer_id"
    t.integer  "questionnaire_id"
    t.integer  "taste"
    t.integer  "color"
    t.integer  "price"
    t.integer  "design"
    t.float    "average"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["beer_id"], name: "index_ratings_on_beer_id"
  add_index "ratings", ["questionnaire_id"], name: "index_ratings_on_questionnaire_id"

  create_table "sexes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

end
