class AsignaturasController < ApplicationController
  before_action :set_asignatura, only: [:show, :edit, :update, :destroy]

  # GET /asignaturas
  # GET /asignaturas.json
  #$asignatura = Asignatura.find(params['id'])
  #	@objetivos=Objetivo.where(["asignatura_id = ?", params['id']])
  def index
    $areas_formacion = AreasFormacion.find(params['id'])
  	@asignaturas= Asignatura.where(["area_formacion_id = ?", params['id']])
  end

  # GET /asignaturas/1
  # GET /asignaturas/1.json
  def show
  end

  # GET /asignaturas/new
  def new
    @asignatura = Asignatura.new
  end

  # GET /asignaturas/1/edit
  def edit
  end

  # POST /asignaturas
  # POST /asignaturas.json
  def create
    @asignatura = Asignatura.new(asignatura_params)

    respond_to do |format|
      if @asignatura.save
        format.html { redirect_to @asignatura, notice: 'Asignatura was successfully created.' }
        format.json { render :show, status: :created, location: @asignatura }
      else
        format.html { render :new }
        format.json { render json: @asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asignaturas/1
  # PATCH/PUT /asignaturas/1.json
  def update
    respond_to do |format|
      if @asignatura.update(asignatura_params)
        format.html { redirect_to @asignatura, notice: 'Asignatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @asignatura }
      else
        format.html { render :edit }
        format.json { render json: @asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignaturas/1
  # DELETE /asignaturas/1.json
  def destroy
    @asignatura.destroy
    respond_to do |format|
      format.html { redirect_to asignaturas_url, notice: 'Asignatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignatura
      @asignatura = Asignatura.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def asignatura_params
      params.require(:asignatura).permit(:area_formacion_id, :asignatura, :codigo, :horas_semanales, :sentido)
    end
end
