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

ActiveRecord::Schema.define(version: 2020_11_09_152516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas_formacions", force: :cascade do |t|
    t.text "area_fomacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "asignaturas", force: :cascade do |t|
    t.integer "area_formacion_id"
    t.string "asignatura"
    t.string "codigo"
    t.integer "horas_semanales"
    t.text "sentido"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contenidos", force: :cascade do |t|
    t.text "descripcion"
    t.integer "tema_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "objetivos", force: :cascade do |t|
    t.string "asignatura_id"
    t.text "objetivo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "perfil_egresados", force: :cascade do |t|
    t.text "perfil"
    t.integer "asignatura_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "temas", force: :cascade do |t|
    t.text "descripcion"
    t.integer "asignatura_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "eliminado"
  end

  add_foreign_key "contenidos", "temas"
  add_foreign_key "temas", "asignaturas"
end
