class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  private

  def current_user
    @current_user ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
  end

  def crearCuotas numero_cuotas,pedido_id
    i=0
    while i<numero_cuotas
      c = Cuotum.new
      c.pedido_id=pedido_id
      c.estado="Pendiente"
      c.num_cuota=i+1
      c.save
      i+=1
    end
  end

end
