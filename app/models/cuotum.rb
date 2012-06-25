class Cuotum < ActiveRecord::Base
  attr_accessible :estado, :liquidacion
  belongs_to :pedido
end
