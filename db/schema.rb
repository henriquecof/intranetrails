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

ActiveRecord::Schema.define(version: 2020_01_29_125608) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agentes", force: :cascade do |t|
    t.string "nome"
    t.string "fone"
    t.string "endereco"
    t.string "uf"
    t.string "cidade"
    t.string "tipo"
    t.string "cpfcnpj"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacorrentes", force: :cascade do |t|
    t.string "descricao"
    t.string "banco"
    t.string "agencia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "tipo"
    t.integer "agente_id"
  end

  create_table "secaos", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "setors", force: :cascade do |t|
    t.string "unidade"
    t.string "empresa"
    t.string "setor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.bigint "setor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "photo"
    t.integer "status"
    t.string "nome"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["setor_id"], name: "index_users_on_setor_id"
  end

end
