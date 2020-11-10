class CreateAsignaturas < ActiveRecord::Migration[6.0]
  def change
    create_table :asignaturas do |t|
      t.integer :area_formacion_id
      t.string :asignatura
      t.string :codigo
      t.integer :horas_semanales
      t.text :sentido

      t.timestamps
    end
    add_foreign_key :asignaturas, :areas_formacions
  end
end
