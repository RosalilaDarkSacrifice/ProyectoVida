class EntradaInventario < ActiveRecord::Base
  attr_accessible :cantidad, :fecha, :inventario_id, :numero, :proveedor, :valor_unitario
	belongs_to :inventario
end
