module CuotaHelper
  def getSaldo (pedido_id, num_cuota)
    pedido=Pedido.find_by_id(pedido_id)
    cuotas=pedido.cuota
    valor_cuota=getValorCuotaInt pedido_id

    credito_actual=pedido.valor_credito-pedido.abono_inicial
    
    i=0
    while i<cuotas.size
      if cuotas[i].estado=="Pagado" && cuotas[i].num_cuota<=num_cuota
        credito_actual-=valor_cuota
      end
      i+=1
    end
    return credito_actual
  end
end
