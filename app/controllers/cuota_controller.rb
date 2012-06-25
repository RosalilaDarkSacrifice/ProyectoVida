class CuotaController < ApplicationController
  # GET /cuota
  # GET /cuota.json
  def index
    @cuota = Cuotum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cuota }
    end
  end

  # GET /cuota/1
  # GET /cuota/1.json
  def show
    @cuotum = Cuotum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cuotum }
    end
  end

  # GET /cuota/new
  # GET /cuota/new.json
  def new
    @cuotum = Cuotum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cuotum }
    end
  end

  # GET /cuota/1/edit
  def edit
    @cuotum = Cuotum.find(params[:id])
  end

  # POST /cuota
  # POST /cuota.json
  def create
    @cuotum = Cuotum.new(params[:cuotum])

    respond_to do |format|
      if @cuotum.save
        format.html { redirect_to @cuotum, notice: 'Cuotum was successfully created.' }
        format.json { render json: @cuotum, status: :created, location: @cuotum }
      else
        format.html { render action: "new" }
        format.json { render json: @cuotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cuota/1
  # PUT /cuota/1.json
  def update
    @cuotum = Cuotum.find(params[:id])

    respond_to do |format|
      if @cuotum.update_attributes(params[:cuotum])
        format.html { redirect_to @cuotum, notice: 'Cuotum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cuotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuota/1
  # DELETE /cuota/1.json
  def destroy
    @cuotum = Cuotum.find(params[:id])
    @cuotum.destroy

    respond_to do |format|
      format.html { redirect_to cuota_url }
      format.json { head :no_content }
    end
  end
end
