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

ActiveRecord::Schema.define(version: 20160115125008) do

  create_table "films", force: :cascade do |t|
    t.string   "Title",      limit: 255
    t.string   "Year",       limit: 255
    t.string   "Rated",      limit: 255
    t.string   "Released",   limit: 255
    t.string   "Runtime",    limit: 255
    t.string   "Genre",      limit: 255
    t.string   "Director",   limit: 255
    t.string   "Writer",     limit: 255
    t.string   "Actors",     limit: 255
    t.string   "Plot",       limit: 255
    t.string   "Language",   limit: 255
    t.string   "Country",    limit: 255
    t.string   "Awards",     limit: 255
    t.string   "Poster",     limit: 255
    t.string   "Metascore",  limit: 255
    t.string   "ImdbRating", limit: 255
    t.string   "ImdbVotes",  limit: 255
    t.string   "ImdbID",     limit: 255
    t.string   "Type",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "films_users", id: false, force: :cascade do |t|
    t.integer "user_id", limit: 4
    t.integer "film_id", limit: 4
  end

  add_index "films_users", ["film_id"], name: "index_films_users_on_film_id", using: :btree
  add_index "films_users", ["user_id"], name: "index_films_users_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
