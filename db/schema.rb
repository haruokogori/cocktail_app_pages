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

ActiveRecord::Schema.define(version: 2019_05_19_095035) do

  create_table "cocktails", primary_key: "cocktail_id", force: :cascade do |t|
    t.string "cocktail_name", null: false
    t.string "style_kbn"
    t.string "cocktail_word"
    t.string "taste_kbn"
    t.string "alcohol_by_volume", null: false
    t.string "popularity"
    t.string "register_user", null: false
    t.string "update_user", null: false
    t.string "delete_flag", default: "0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", primary_key: "ingredients_id", force: :cascade do |t|
    t.string "ingredients_name", null: false
    t.string "register_user", null: false
    t.string "update_user", null: false
    t.string "delete_flag", default: "0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", primary_key: ["cocktail_id", "ingredients_id"], force: :cascade do |t|
    t.decimal "cocktail_id", null: false
    t.decimal "ingredients_id", null: false
    t.decimal "quantity", null: false
    t.string "register_user", null: false
    t.string "update_user", null: false
    t.string "delete_flag", default: "0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
