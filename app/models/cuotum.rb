class Cuotum < ActiveRecord::Base
  attr_accessible :estado, :liquidacion, :fecha, :valor,:valor_credito,:num_deposito,:valor_deposito, :mora, :descuento, :saldo,:revisado,:observaciones,:usuario_id,:num_liquidacion
  belongs_to :pedido
  belongs_to :usuario
  has_many :depositos
end