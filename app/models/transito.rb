class Transito < ActiveRecord::Base
  attr_accessible :asesor_id, :cantidad, :producto_id
  belongs_to :asesor
  belongs_to :producto
end
