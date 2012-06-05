class Pedido < ActiveRecord::Base
  attr_accessible :numero_pedido,:abono_inicial, :alumno, :asesor_id, :cargo_cliente, :celular_cliente, :ciudad, :ciudad_cliente, :conyugue, :correo_electronico, :departamento_cliente, :direccion_cliente, :evento, :fecha_fin_pago, :fecha_inicio_pago, :fecha_pedido, :fin_hora_contacto, :grado, :identidad_cliente, :inicio_hora_contacto, :jornada, :nombre_cliente, :numero_cuotas, :referencia, :telefono_cliente, :telefono_referencia, :telefono_trabajo, :trabajo_cliente, :valor_credito, :valor_cuota
  belongs_to :asesor
  has_many :producto_pedidos
end
