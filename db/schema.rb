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

ActiveRecord::Schema.define(version: 20130412035009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "episodes", force: true do |t|
    t.integer  "tvshow_id"
    t.integer  "season"
    t.integer  "number"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "episodes", ["tvshow_id"], name: "index_episodes_on_tvshow_id"

  create_table "moments", force: true do |t|
    t.integer  "episode_id"
    t.string   "title"
    t.text     "analysis"
    t.string   "media_type"
    t.string   "media_url"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "moments", ["episode_id"], name: "index_moments_on_episode_id"

  create_table "ranking_boards", force: true do |t|
    t.integer  "tvshow_id"
    t.integer  "user_id"
    t.integer  "capacity",   default: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ranking_boards", ["tvshow_id"], name: "index_ranking_boards_on_tvshow_id"
  add_index "ranking_boards", ["user_id"], name: "index_ranking_boards_on_user_id"

  create_table "rankings", force: true do |t|
    t.integer  "moment_id"
    t.integer  "ranking_board_id"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rankings", ["moment_id"], name: "index_rankings_on_moment_id"
  add_index "rankings", ["ranking_board_id"], name: "index_rankings_on_ranking_board_id"

  create_table "tvshows", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "seasons"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email"

end
