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

ActiveRecord::Schema.define(version: 2018_05_24_195015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.bigint "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_menu_items_on_restaurant_id"
  end

  create_table "menu_tems", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.bigint "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_menu_tems_on_restaurant_id"
  end

  create_table "new_orders", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_new_orders_on_customer_id"
    t.index ["restaurant_id"], name: "index_new_orders_on_restaurant_id"
  end

  create_table "order_menu_items", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "menu_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_item_id"], name: "index_order_menu_items_on_menu_item_id"
    t.index ["order_id"], name: "index_order_menu_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "menu_items", "restaurants"
  add_foreign_key "menu_tems", "restaurants"
  add_foreign_key "new_orders", "customers"
  add_foreign_key "new_orders", "restaurants"
  add_foreign_key "order_menu_items", "menu_items"
  add_foreign_key "order_menu_items", "orders"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "restaurants"
end
