class Inventario < ActiveRecord::Base
  attr_accessible :cantidad, :producto_id
  belongs_to :producto;
end
