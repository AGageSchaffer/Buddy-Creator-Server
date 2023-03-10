# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_02_13_183642) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.integer "stat_id"
    t.integer "party_id"
    t.index ["party_id"], name: "index_characters_on_party_id"
    t.index ["stat_id"], name: "index_characters_on_stat_id"
  end

  create_table "parties", force: :cascade do |t|
    t.string "name"
  end

  create_table "stats", force: :cascade do |t|
    t.integer "vigor"
    t.integer "attack"
    t.integer "mana"
    t.integer "faith"
  end

end
