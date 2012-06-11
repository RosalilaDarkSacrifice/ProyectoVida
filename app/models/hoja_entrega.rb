class HojaEntrega < ActiveRecord::Base
  attr_accessible :cantidad, :documento, :es_devolucion, :fecha, :producto_id
  belongs_to :producto
end
