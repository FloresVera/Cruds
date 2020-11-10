class AreasFormacionsController < ApplicationController
  before_action :set_areas_formacion, only: [:show, :edit, :update, :destroy]

  # GET /areas_formacions
  # GET /areas_formacions.json
  def index
    @areas_formacions = AreasFormacion.all
  end

  # GET /areas_formacions/1
  # GET /areas_formacions/1.json
  def show
  end

  # GET /areas_formacions/new
  def new
    @areas_formacion = AreasFormacion.new
  end

  # GET /areas_formacions/1/edit
  def edit
  end

  # POST /areas_formacions
  # POST /areas_formacions.json
  def create
    @areas_formacion = AreasFormacion.new(areas_formacion_params)

    respond_to do |format|
      if @areas_formacion.save
        format.html { redirect_to @areas_formacion, notice: 'Areas formacion was successfully created.' }
        format.json { render :show, status: :created, location: @areas_formacion }
      else
        format.html { render :new }
        format.json { render json: @areas_formacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /areas_formacions/1
  # PATCH/PUT /areas_formacions/1.json
  def update
    respond_to do |format|
      if @areas_formacion.update(areas_formacion_params)
        format.html { redirect_to @areas_formacion, notice: 'Areas formacion was successfully updated.' }
        format.json { render :index, status: :ok, location: @areas_formacion }
      else
        format.html { render :edit }
        format.json { render json: @areas_formacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /areas_formacions/1
  # DELETE /areas_formacions/1.json
  def destroy
    @areas_formacion.destroy
    respond_to do |format|
      format.html { redirect_to areas_formacions_url, notice: 'Areas formacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_areas_formacion
      @areas_formacion = AreasFormacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def areas_formacion_params
      params.require(:areas_formacion).permit(:area_fomacion)
    end
end
