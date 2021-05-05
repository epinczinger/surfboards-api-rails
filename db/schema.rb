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

ActiveRecord::Schema.define(version: 2021_05_05_020234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accesories", force: :cascade do |t|
    t.text "description"
    t.decimal "price"
    t.string "model"
    t.string "brand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_url"
    t.string "kind", default: "accesories"
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "favouriteable_id"
    t.string "favouriteable_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "surfboards", force: :cascade do |t|
    t.string "model"
    t.decimal "price", precision: 6, scale: 2
    t.string "brand"
    t.text "description"
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "kind", default: "surfboards"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.boolean "is_admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "favourites", "users"
end
