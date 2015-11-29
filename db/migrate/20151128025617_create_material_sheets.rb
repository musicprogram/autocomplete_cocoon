class CreateMaterialSheets < ActiveRecord::Migration
  def change
    create_table :material_sheets do |t|
      t.string :material_id
      t.integer :cantidad
      t.references :sheet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
