class NotaEntrega < ActiveRecord::Base
  attr_accessible :asesor_id, :cantidad, :fecha, :numero, :producto_id
end
