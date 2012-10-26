class Transito < ActiveRecord::Base
  attr_accessible :asesor_id, :cantidad, :producto_id
  belongs_to :asesor
  belongs_to :producto
	has_many :nota_entrega
	has_many :nota_devolucion

	def nombre
		return asesor.nombre + "-" + producto.nombre + " (" + cantidad.to_s + ")"
	end
end
