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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131006121857) do

  create_table "brands", :force => true do |t|
    t.string   "title",         :default => "",    :null => false
    t.string   "meta_d",        :default => "",    :null => false
    t.string   "meta_k",        :default => "",    :null => false
    t.string   "logo",          :default => "",    :null => false
    t.text     "text"
    t.string   "name"
    t.string   "name_shown"
    t.boolean  "show_on_index", :default => false
    t.boolean  "active",        :default => true
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "categories", :force => true do |t|
    t.integer  "gender_id"
    t.integer  "departments_id"
    t.string   "name_us"
    t.string   "name_ru"
    t.string   "cat_link"
    t.boolean  "active"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "categories", ["departments_id"], :name => "index_categories_on_departments_id"
  add_index "categories", ["gender_id"], :name => "index_categories_on_gender_id"

  create_table "colors", :force => true do |t|
    t.string   "name_us"
    t.string   "name_ru"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "colors_items", :id => false, :force => true do |t|
    t.integer "item_id"
    t.integer "color_id"
  end

  add_index "colors_items", ["item_id", "color_id"], :name => "index_colors_items_on_item_id_and_color_id"

  create_table "departments", :force => true do |t|
    t.string   "name_us"
    t.string   "name_ru"
    t.string   "link"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "descriptions", :force => true do |t|
    t.integer  "item_id"
    t.float    "price"
    t.integer  "sku"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "descriptions", ["item_id"], :name => "index_descriptions_on_item_id"

  create_table "genders", :force => true do |t|
    t.string   "gender_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "images", :force => true do |t|
    t.integer  "description_id"
    t.string   "thumb_path"
    t.string   "image_path"
    t.string   "zoom_path"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "images", ["description_id"], :name => "index_images_on_description_id"

  create_table "istyles", :force => true do |t|
    t.string   "name_us"
    t.string   "name_ru"
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "items", :force => true do |t|
    t.integer  "category_id"
    t.integer  "product_id"
    t.integer  "style_id"
    t.integer  "brand_id"
    t.integer  "width_id"
    t.integer  "istyle_id"
    t.integer  "material_id"
    t.string   "image_path"
    t.string   "productname"
    t.float    "price_usd"
    t.float    "price_ua"
    t.string   "discount"
    t.float    "msrp_ua"
    t.string   "ilink"
    t.string   "title",       :default => "",   :null => false
    t.string   "meta_d",      :default => "",   :null => false
    t.string   "meta_k",      :default => "",   :null => false
    t.boolean  "active",      :default => true
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "items", ["brand_id"], :name => "index_items_on_brand_id"
  add_index "items", ["category_id"], :name => "index_items_on_category_id"
  add_index "items", ["istyle_id"], :name => "index_items_on_istyle_id"
  add_index "items", ["material_id"], :name => "index_items_on_material_id"
  add_index "items", ["width_id"], :name => "index_items_on_width_id"

  create_table "items_sizes", :id => false, :force => true do |t|
    t.integer "item_id"
    t.integer "size_id"
  end

  add_index "items_sizes", ["item_id", "size_id"], :name => "index_items_sizes_on_item_id_and_size_id"

  create_table "materials", :force => true do |t|
    t.string   "name_us"
    t.string   "name_ru"
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "name",       :default => "",    :null => false
    t.string   "title",      :default => "",    :null => false
    t.string   "meta_d",     :default => "",    :null => false
    t.string   "meta_k",     :default => "",    :null => false
    t.string   "uri",        :default => "",    :null => false
    t.text     "text"
    t.boolean  "active",     :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id",                     :null => false
    t.text     "data",       :limit => 16777215
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "shoes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sizes", :force => true do |t|
    t.string   "name_us"
    t.string   "name_ru"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "subdepartments", :force => true do |t|
    t.integer  "department_id"
    t.integer  "gender_id"
    t.string   "name_us"
    t.string   "name_ru"
    t.string   "cat_link"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "subdepartments", ["department_id"], :name => "index_subdepartments_on_department_id"
  add_index "subdepartments", ["gender_id"], :name => "index_subdepartments_on_gender_id"

  create_table "users", :force => true do |t|
    t.string   "email",             :limit => 40, :default => "", :null => false
    t.string   "username",          :limit => 20,                 :null => false
    t.string   "firstname",         :limit => 30, :default => "", :null => false
    t.string   "lastname",          :limit => 30, :default => "", :null => false
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "widths", :force => true do |t|
    t.string   "name_us"
    t.string   "name_ru"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
