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

ActiveRecord::Schema[7.0].define(version: 2023_06_30_024210) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "adminpack"
  enable_extension "plpgsql"

  create_table "actor", primary_key: "actor_id", id: :serial, force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
  end

  create_table "beers", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "alcoholicgrade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "yeasttype"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "house"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cliente1", id: false, force: :cascade do |t|
    t.string "nombre", limit: 50
    t.string "apellido", limit: 50
  end

  create_table "clientes", id: false, force: :cascade do |t|
    t.string "email", limit: 50
    t.string "nombre"
    t.string "telefono", limit: 16
    t.string "empresa", limit: 50
    t.integer "prioridad", limit: 2
  end

  create_table "colaborators", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "direction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "demo", id: :integer, default: nil, force: :cascade do |t|
    t.string "name", limit: 200, null: false
    t.text "hint", null: false
  end

  create_table "documentary_films", force: :cascade do |t|
    t.string "name"
    t.string "sinopsis"
    t.string "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estudiante", primary_key: "rut", id: { type: :string, limit: 15 }, force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
    t.string "apellido", limit: 50, null: false
  end

  create_table "genero", primary_key: "genero_id", id: :serial, force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "urlimage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "journalists", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "speciality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mock_products", id: false, force: :cascade do |t|
    t.integer "id"
    t.string "product_name", limit: 50
    t.integer "price"
    t.string "stock", limit: 50
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.string "sinopsis"
    t.string "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nota", primary_key: "notas_id", id: :integer, default: nil, force: :cascade do |t|
    t.integer "nota"
    t.integer "usuario_id"
  end

  create_table "pelicula", primary_key: "pelicula_id", id: :serial, force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
    t.integer "genero_id"
  end

  create_table "peliculaactor", primary_key: "peliculaactor_id", id: :serial, force: :cascade do |t|
    t.integer "pelicula_id"
    t.integer "actor_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pregunta", id: :serial, force: :cascade do |t|
    t.string "pregunta", limit: 255, null: false
    t.string "respuesta_correcta", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stock"
  end

  create_table "t_vshows", force: :cascade do |t|
    t.string "name"
    t.string "sinopsis"
    t.string "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tv_shows", force: :cascade do |t|
    t.string "name"
    t.string "sinopsis"
    t.string "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.string "description"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age"
    t.string "email"
  end

  create_table "worldcupteams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pelicula", "genero", primary_key: "genero_id", name: "pelicula_genero_id_fkey"
  add_foreign_key "peliculaactor", "actor", primary_key: "actor_id", name: "peliculaactor_actor_id_fkey"
  add_foreign_key "peliculaactor", "pelicula", primary_key: "pelicula_id", name: "peliculaactor_pelicula_id_fkey"
end
