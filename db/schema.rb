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

ActiveRecord::Schema[7.0].define(version: 2023_09_19_102452) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "items", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "type", null: false
    t.string "name", null: false
    t.boolean "banned_on_flea", null: false
    t.boolean "have_market_data", null: false
    t.string "short_name", null: false
    t.integer "price", null: false
    t.integer "base_price", null: false
    t.integer "avg24h_price", null: false
    t.integer "avg7days_price", null: false
    t.integer "trader", null: false
    t.integer "trader_price", null: false
    t.integer "trader_price_cur", null: false
    t.integer "trader_price_rub", null: false
    t.datetime "updated", null: false
    t.integer "slots", null: false
    t.decimal "diff24h", null: false
    t.decimal "diff7days", null: false
    t.string "icon"
    t.string "link"
    t.string "wiki_link"
    t.string "img"
    t.string "img_big"
    t.string "bsg_id"
    t.boolean "is_functional", null: false
    t.integer "sub_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "recoil_percent"
    t.decimal "ergonomics"
  end

end
