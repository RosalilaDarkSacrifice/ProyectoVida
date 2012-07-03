class Cuotum < ActiveRecord::Base
  attr_accessible :estado, :liquidacion, :fecha, :valor,:valor_credito, :valor_deposito, :mora, :descuento, :saldo
  belongs_to :pedido
  has_many :depositos
end
