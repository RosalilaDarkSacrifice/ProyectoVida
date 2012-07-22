class BuscadorController < ApplicationController

  def buscar
    nombre = params[:nombre]
    @xD=Rol.find_by_nombre(nombre).id
    #render :js => "alert('Blah')"
    respond_to do |format|
      format.js
    end
  end
end
