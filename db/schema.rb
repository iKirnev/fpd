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

ActiveRecord::Schema.define(version: 20180328191332) do

  create_table "accessories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string "name"
    t.string "description"
    t.decimal "price", precision: 10
  end

  create_table "accessories_products", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.bigint "product_id", null: false
    t.bigint "accessory_id", null: false
    t.index ["accessory_id", "product_id"], name: "index_accessories_products_on_accessory_id_and_product_id"
    t.index ["product_id", "accessory_id"], name: "index_accessories_products_on_product_id_and_accessory_id"
  end

  create_table "constructions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string "name"
    t.text "description"
  end

  create_table "galleries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.integer "product_id"
    t.string "name"
    t.string "description"
    t.decimal "price", precision: 10, scale: 2
  end

  create_table "gallery_photos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.bigint "gallery_id"
    t.string "path"
    t.boolean "is_main"
    t.index ["gallery_id"], name: "index_gallery_photos_on_gallery_id"
  end

  create_table "price_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string "name"
    t.string "price_range"
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string "name"
    t.text "description"
    t.decimal "price", precision: 10, scale: 2
    t.string "model_path"
    t.string "a_key"
    t.string "model_small_path"
    t.integer "price_type"
    t.string "model_constr_path"
    t.string "model_constr_small_path"
    t.integer "construct_id"
  end

  create_table "products_stuffs", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.bigint "product_id", null: false
    t.bigint "stuff_id", null: false
    t.index ["product_id", "stuff_id"], name: "index_products_stuffs_on_product_id_and_stuff_id"
    t.index ["stuff_id", "product_id"], name: "index_products_stuffs_on_stuff_id_and_product_id"
  end

  create_table "products_uses", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.bigint "product_id", null: false
    t.bigint "use_id", null: false
    t.index ["product_id", "use_id"], name: "index_products_uses_on_product_id_and_use_id"
    t.index ["use_id", "product_id"], name: "index_products_uses_on_use_id_and_product_id"
  end

  create_table "stuffs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string "name"
    t.string "description"
  end

  create_table "uses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string "name"
    t.string "description"
  end

  add_foreign_key "gallery_photos", "galleries"
end
