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

ActiveRecord::Schema.define(version: 2020_04_06_122122) do

  create_table "active_admin_comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "countries", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 50
    t.integer "ranking"
    t.string "group_name", limit: 1
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "department"
    t.integer "gender"
    t.date "birth"
    t.date "joined_date"
    t.bigint "payment"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "goals", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "pairing_id"
    t.integer "player_id"
    t.string "goal_time", limit: 10
  end

  create_table "goals_tmp", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "my_country", limit: 50
    t.string "enemy_country", limit: 50
    t.string "goal_time", limit: 10
    t.string "player_name", limit: 50
  end

  create_table "pairings", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "kickoff"
    t.integer "my_country_id"
    t.integer "enemy_country_id"
  end

  create_table "pairings_tmp", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "kickoff"
    t.string "my_country", limit: 50
    t.string "enemy_country", limit: 50
  end

  create_table "players", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "country_id"
    t.integer "uniform_num"
    t.string "position", limit: 2
    t.string "name", limit: 50
    t.string "club", limit: 50
    t.date "birth"
    t.integer "height"
    t.integer "weight"
  end

  create_table "players2", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "id", default: 0, null: false
    t.integer "country_id"
    t.integer "uniform_num"
    t.string "position", limit: 2, collation: "utf8_general_ci"
    t.string "name", limit: 50, collation: "utf8_general_ci"
    t.string "club", limit: 50, collation: "utf8_general_ci"
    t.date "birth"
    t.integer "height"
    t.integer "weight"
  end

  create_table "players_tmp", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "country", limit: 50
    t.integer "uniform_num"
    t.string "position", limit: 2
    t.string "name", limit: 50
    t.string "club", limit: 50
    t.date "birth"
    t.integer "height"
    t.integer "weight"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
