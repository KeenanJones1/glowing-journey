# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_18_230059) do

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "type"
    t.integer "effect"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ruler_choices", force: :cascade do |t|
    t.integer "ruler_id", null: false
    t.integer "event_id", null: false
    t.integer "choice"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_ruler_choices_on_event_id"
    t.index ["ruler_id"], name: "index_ruler_choices_on_ruler_id"
  end

  create_table "ruler_countries", force: :cascade do |t|
    t.integer "ruler_id", null: false
    t.integer "country_id", null: false
    t.float "tax_income"
    t.integer "number_of_providences"
    t.float "trade_income"
    t.float "gross_income"
    t.integer "army_size"
    t.integer "product"
    t.integer "country_happiness"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_ruler_countries_on_country_id"
    t.index ["ruler_id"], name: "index_ruler_countries_on_ruler_id"
  end

  create_table "rulers", force: :cascade do |t|
    t.string "first_name"
    t.string "dynasty_name"
    t.integer "age"
    t.string "personality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ruler_choices", "events"
  add_foreign_key "ruler_choices", "rulers"
  add_foreign_key "ruler_countries", "countries"
  add_foreign_key "ruler_countries", "rulers"
end
