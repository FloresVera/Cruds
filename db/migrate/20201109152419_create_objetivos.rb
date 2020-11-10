class CreateObjetivos < ActiveRecord::Migration[6.0]
  def change
    create_table :objetivos do |t|
      t.string :asignatura_id
      t.text :objetivo

      t.timestamps
    end
    add_foreign_key :objetivos, :asignaturas
  end
end
