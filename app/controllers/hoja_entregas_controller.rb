class HojaEntregasController < ApplicationController
  # GET /hoja_entregas
  # GET /hoja_entregas.json
  def index
    @hoja_entregas = HojaEntrega.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hoja_entregas }
    end
  end

  # GET /hoja_entregas/1
  # GET /hoja_entregas/1.json
  def show
    @hoja_entrega = HojaEntrega.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hoja_entrega }
    end
  end

  # GET /hoja_entregas/new
  # GET /hoja_entregas/new.json
  def new
    @hoja_entrega = HojaEntrega.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hoja_entrega }
    end
  end

  # GET /hoja_entregas/1/edit
  def edit
    @hoja_entrega = HojaEntrega.find(params[:id])
  end

  # POST /hoja_entregas
  # POST /hoja_entregas.json
  def create
    @hoja_entrega = HojaEntrega.new(params[:hoja_entrega])

    respond_to do |format|
      if @hoja_entrega.save
        format.html { redirect_to @hoja_entrega, notice: 'Se ha agregado una nueva nota de entrega.' }
        format.json { render json: @hoja_entrega, status: :created, location: @hoja_entrega }
      else
        format.html { render action: "new" }
        format.json { render json: @hoja_entrega.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hoja_entregas/1
  # PUT /hoja_entregas/1.json
  def update
    @hoja_entrega = HojaEntrega.find(params[:id])

    respond_to do |format|
      if @hoja_entrega.update_attributes(params[:hoja_entrega])
        format.html { redirect_to @hoja_entrega, notice: 'Hoja entrega was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hoja_entrega.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoja_entregas/1
  # DELETE /hoja_entregas/1.json
  def destroy
    @hoja_entrega = HojaEntrega.find(params[:id])
    @hoja_entrega.destroy

    respond_to do |format|
      format.html { redirect_to hoja_entregas_url }
      format.json { head :no_content }
    end
  end
end
