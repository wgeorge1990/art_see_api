ActiveRecord::Schema[7.0].define(version: 2023_04_29_211230) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "follows", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "bio"
    t.string "profile_image"
    t.datetime "logged_in_at"
    t.datetime "logged_out_at"
    t.boolean "active"
    t.date "birthday"
    t.integer "age"
    t.string "headline"
    t.integer "followers"
    t.integer "following"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
