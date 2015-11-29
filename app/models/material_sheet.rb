class MaterialSheet < ActiveRecord::Base
  belongs_to :sheet
  belongs_to :material_sheet

  after_create :validar

  def validar
  	c = Material.where(nombre: self.material_id)
  	if c.count == 0
  		Material.create(nombre: self.material_id)
  	end
  end
end
