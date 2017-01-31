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

ActiveRecord::Schema.define(version: 20170131111843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abonents", force: :cascade do |t|
    t.integer  "ticket"
    t.string   "surname"
    t.string   "name"
    t.string   "lastname"
    t.string   "adress"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.string   "autor"
    t.string   "shifr"
    t.string   "publishe"
    t.integer  "year"
    t.integer  "price"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deliveries", force: :cascade do |t|
    t.date     "dateissue"
    t.date     "datereturn"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "surname"
    t.string   "name"
    t.string   "lastname"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "startwork"
    t.string   "position"
    t.string   "education"
  end

  create_table "libraries", force: :cascade do |t|
    t.string   "number"
    t.string   "name"
    t.string   "adress"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prods", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
