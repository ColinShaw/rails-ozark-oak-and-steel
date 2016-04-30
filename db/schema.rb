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

ActiveRecord::Schema.define(version: 0) do

  create_table "categories", force: true do |t|
    t.string "name",        default: '', null: false
    t.string "class_name",  default: '', null: false   
    t.datetime "created_at"
    t.datetime "updated_at"
    
  end

  create_table "categories_products", id: false, force: true do |t|
    t.integer "category_id"
    t.integer "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
  
  add_index "categories_products", ["category_id", "product_id"], name: "index_categories_products_on_category_id_and_product_id", using: :btree

  create_table "images_products", id: false, force: true do |t|
    t.integer "image_id"
    t.integer "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images_products", ["image_id", "product_id"], name: "index_images_products_on_image_id_and_product_id", using: :btree

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type",            limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "images", force: true do |t|
    t.string "name",            default: '', null: false
    t.string "alt_tag",         default: '', null: false
    t.boolean "main_image",     default: false, null: false
    t.integer "display_order",  default: 0, null: false
    t.string "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string "name",           default: '', null: false
    t.float  "price",          limit: 53, default: 0.0, null: false
    t.text "description",      null: false
    t.boolean "visible",       default: false, null: false
    t.string "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
  
  create_table "feeds", force: true do |t|
    t.string "title",   default: '', null: false
    t.text "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
