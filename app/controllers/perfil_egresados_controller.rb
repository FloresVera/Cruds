class PerfilEgresadosController < ApplicationController
  before_action :set_perfil_egresado, only: [:show, :edit, :update, :destroy]

  # GET /perfil_egresados
  # GET /perfil_egresados.json
  def index
    $asignatura = Asignatura.find(params['id'])
  	@perfil_egresados= PerfilEgresado.where(["asignatura_id = ?", params['id']])
  end

  # GET /perfil_egresados/1
  # GET /perfil_egresados/1.json
  def show
  end

  # GET /perfil_egresados/new
  def new
    @perfil_egresado = PerfilEgresado.new
  end

  # GET /perfil_egresados/1/edit
  def edit
  end

  # POST /perfil_egresados
  # POST /perfil_egresados.json
  def create
    @perfil_egresado = PerfilEgresado.new(perfil_egresado_params)

    respond_to do |format|
      if @perfil_egresado.save
        format.html { redirect_to @perfil_egresado, notice: 'Perfil egresado was successfully created.' }
        format.json { render :show, status: :created, location: @perfil_egresado }
      else
        format.html { render :new }
        format.json { render json: @perfil_egresado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perfil_egresados/1
  # PATCH/PUT /perfil_egresados/1.json
  def update
    respond_to do |format|
      if @perfil_egresado.update(perfil_egresado_params)
        format.html { redirect_to @perfil_egresado, notice: 'Perfil egresado was successfully updated.' }
        format.json { render :show, status: :ok, location: @perfil_egresado }
      else
        format.html { render :edit }
        format.json { render json: @perfil_egresado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfil_egresados/1
  # DELETE /perfil_egresados/1.json
  def destroy
    @perfil_egresado.destroy
    respond_to do |format|
      format.html { redirect_to perfil_egresados_url, notice: 'Perfil egresado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perfil_egresado
      @perfil_egresado = PerfilEgresado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def perfil_egresado_params
      params.require(:perfil_egresado).permit(:perfil, :asignatura_id)
    end
end
