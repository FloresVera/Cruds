class CreateTemas < ActiveRecord::Migration[6.0]
  def change
    create_table :temas do |t|
      t.text :descripcion
      t.integer :asignatura_id

      t.timestamps
    end
    add_foreign_key :temas, :asignaturas
  end
end
