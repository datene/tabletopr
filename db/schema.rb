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

ActiveRecord::Schema.define(version: 20160907183949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string   "name"
    t.integer  "base_value"
    t.integer  "modifier"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "rpg_character_id"
    t.index ["rpg_character_id"], name: "index_abilities_on_rpg_character_id", using: :btree
  end

  create_table "action_events", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "encounter_id"
    t.index ["encounter_id"], name: "index_action_events_on_encounter_id", using: :btree
  end

  create_table "actions", force: :cascade do |t|
    t.text     "description"
    t.string   "status",           default: "pending"
    t.string   "permission",       default: "pending"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "action_event_id"
    t.integer  "rpg_character_id"
    t.integer  "dice_roll_id"
    t.index ["action_event_id"], name: "index_actions_on_action_event_id", using: :btree
    t.index ["dice_roll_id"], name: "index_actions_on_dice_roll_id", using: :btree
    t.index ["rpg_character_id"], name: "index_actions_on_rpg_character_id", using: :btree
  end

  create_table "chapters", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "game_id"
    t.string   "title"
    t.index ["game_id"], name: "index_chapters_on_game_id", using: :btree
  end

  create_table "dice_rolls", force: :cascade do |t|
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dices", force: :cascade do |t|
    t.integer  "eyes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encounters", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "chapter_id"
    t.index ["chapter_id"], name: "index_encounters_on_chapter_id", using: :btree
  end

  create_table "equipment", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "rpg_character_id"
    t.index ["rpg_character_id"], name: "index_equipment_on_rpg_character_id", using: :btree
  end

  create_table "feature_traits", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "rpg_character_id"
    t.index ["rpg_character_id"], name: "index_feature_traits_on_rpg_character_id", using: :btree
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "gm_id"
    t.integer  "creator_id"
    t.string   "photo"
    t.index ["creator_id"], name: "index_games_on_creator_id", using: :btree
    t.index ["gm_id"], name: "index_games_on_gm_id", using: :btree
  end

  create_table "initiatives", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "dice_roll_id"
    t.integer  "action_event_id"
    t.integer  "rpg_character_id"
    t.integer  "monster_id"
    t.index ["action_event_id"], name: "index_initiatives_on_action_event_id", using: :btree
    t.index ["dice_roll_id"], name: "index_initiatives_on_dice_roll_id", using: :btree
    t.index ["monster_id"], name: "index_initiatives_on_monster_id", using: :btree
    t.index ["rpg_character_id"], name: "index_initiatives_on_rpg_character_id", using: :btree
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "rpg_character_id"
    t.index ["rpg_character_id"], name: "index_languages_on_rpg_character_id", using: :btree
  end

  create_table "lores", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "encounter_id"
    t.index ["encounter_id"], name: "index_lores_on_encounter_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "game_id"
    t.index ["game_id"], name: "index_messages_on_game_id", using: :btree
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "monsters", force: :cascade do |t|
    t.string   "race"
    t.text     "background"
    t.string   "moral_alignment"
    t.string   "name"
    t.integer  "armor_class"
    t.integer  "hitpoints"
    t.integer  "initiative_modifier"
    t.integer  "speed"
    t.string   "class_style"
    t.string   "picture"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "action_event_id"
    t.index ["action_event_id"], name: "index_monsters_on_action_event_id", using: :btree
  end

  create_table "playing_sessions", force: :cascade do |t|
    t.boolean  "gm",         default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "game_id"
    t.integer  "user_id"
    t.index ["game_id"], name: "index_playing_sessions_on_game_id", using: :btree
    t.index ["user_id"], name: "index_playing_sessions_on_user_id", using: :btree
  end

  create_table "proficiencies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "rpg_character_id"
    t.index ["rpg_character_id"], name: "index_proficiencies_on_rpg_character_id", using: :btree
  end

  create_table "rpg_characters", force: :cascade do |t|
    t.string   "class_style"
    t.integer  "level"
    t.string   "race"
    t.text     "background"
    t.string   "moral_alignment"
    t.string   "name"
    t.integer  "experience_points"
    t.integer  "armor_class"
    t.integer  "initiative_modifier"
    t.integer  "speed"
    t.string   "gender"
    t.integer  "hitpoints"
    t.string   "picture"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.integer  "game_id"
    t.index ["game_id"], name: "index_rpg_characters_on_game_id", using: :btree
    t.index ["user_id"], name: "index_rpg_characters_on_user_id", using: :btree
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.integer  "modifier"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "rpg_character_id"
    t.index ["rpg_character_id"], name: "index_skills_on_rpg_character_id", using: :btree
  end

  create_table "spell_attacks", force: :cascade do |t|
    t.string   "name"
    t.integer  "atk_bonus"
    t.integer  "damage_modifier"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "rpg_character_id"
    t.integer  "dice_id"
    t.index ["dice_id"], name: "index_spell_attacks_on_dice_id", using: :btree
    t.index ["rpg_character_id"], name: "index_spell_attacks_on_rpg_character_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "photo"
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "abilities", "rpg_characters"
  add_foreign_key "action_events", "encounters"
  add_foreign_key "actions", "action_events"
  add_foreign_key "actions", "dice_rolls"
  add_foreign_key "actions", "rpg_characters"
  add_foreign_key "chapters", "games"
  add_foreign_key "encounters", "chapters"
  add_foreign_key "equipment", "rpg_characters"
  add_foreign_key "feature_traits", "rpg_characters"
  add_foreign_key "games", "users", column: "creator_id"
  add_foreign_key "games", "users", column: "gm_id"
  add_foreign_key "initiatives", "action_events"
  add_foreign_key "initiatives", "dice_rolls"
  add_foreign_key "initiatives", "monsters"
  add_foreign_key "initiatives", "rpg_characters"
  add_foreign_key "languages", "rpg_characters"
  add_foreign_key "lores", "encounters"
  add_foreign_key "messages", "games"
  add_foreign_key "messages", "users"
  add_foreign_key "monsters", "action_events"
  add_foreign_key "playing_sessions", "games"
  add_foreign_key "playing_sessions", "users"
  add_foreign_key "proficiencies", "rpg_characters"
  add_foreign_key "rpg_characters", "games"
  add_foreign_key "rpg_characters", "users"
  add_foreign_key "skills", "rpg_characters"
  add_foreign_key "spell_attacks", "dices"
  add_foreign_key "spell_attacks", "rpg_characters"
end
