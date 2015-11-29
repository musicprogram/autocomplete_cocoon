class Material < ActiveRecord::Base
	has_many :material_sheets

	 # metodos autocomplete
	  def material_nombre
	      material.nombre if material
	  end

	  def material_nombre=(nombre)
	      self.material = Material.find_by_nombre(nombre)
	  end

end
