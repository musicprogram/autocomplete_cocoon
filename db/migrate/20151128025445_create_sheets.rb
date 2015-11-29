class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
