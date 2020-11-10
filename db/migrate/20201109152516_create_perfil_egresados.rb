class CreatePerfilEgresados < ActiveRecord::Migration[6.0]
  def change
    create_table :perfil_egresados do |t|
      t.text :perfil
      t.integer :asignatura_id

      t.timestamps
    end
    add_foreign_key :perfil_egresados, :asignaturas
  end
end
