class CreateAreasFormacions < ActiveRecord::Migration[6.0]
  def change
    create_table :areas_formacions do |t|
      t.text :area_fomacion

      t.timestamps
    end
  end
end
