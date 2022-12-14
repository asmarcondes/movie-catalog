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

ActiveRecord::Schema[7.0].define(version: 2022_11_21_044554) do
  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.integer "birth_year"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_actors_on_email", unique: true
  end

  create_table "actors_movies", id: false, force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "actor_id", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.integer "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "launch_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "comment"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "movie_id", null: false
    t.boolean "approved", default: false
    t.index ["movie_id"], name: "index_reviews_on_movie_id"
  end

  add_foreign_key "reviews", "movies"
end
