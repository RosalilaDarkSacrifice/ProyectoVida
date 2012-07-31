class RepartirController < ApplicationController
  def getPrimeraCuotaPendiente pedido_id
    pedido=Pedido.find_by_id(pedido_id)
    return pedido.cuota.order("num_cuota").where(:estado=>"Pendiente")[0]
  end
  def index
    @cuotas=[]
    Pedido.all.each do |p|
      c=getPrimeraCuotaPendiente p.id
      if c!=nil
        @cuotas.push(c)
      end
    end
  end

  def reparticion
    usuarios=Usuario.where(:rol_id=>4)

    @cuotas=[]
    Pedido.all.each do |p|
      cp=getPrimeraCuotaPendiente p.id
      if cp!=nil
        @cuotas.push(cp)
      end
    end

    i=0
    @cuotas.each do |c|
      c.usuario_id=usuarios[i%usuarios.size].id
      c.save
      i+=1
    end
    redirect_to "/cuota"
  end
end
