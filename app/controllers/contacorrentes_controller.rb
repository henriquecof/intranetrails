class ContacorrentesController < ApplicationController
  before_action :set_contacorrente, only: [:show, :edit, :update, :destroy]

  # GET /contacorrentes
  # GET /contacorrentes.json
  def index
    @contacorrentes = Contacorrente.all
  end

  # GET /contacorrentes/1
  # GET /contacorrentes/1.json
  def show
  end

  # GET /contacorrentes/new
  def new
    @contacorrente = Contacorrente.new
  end

  # GET /contacorrentes/1/edit
  def edit
  end

  # POST /contacorrentes
  # POST /contacorrentes.json
  def create
    @contacorrente = Contacorrente.new(contacorrente_params)

    respond_to do |format|
      if @contacorrente.save
        format.html { redirect_to @contacorrente, notice: 'Contacorrente was successfully created.' }
        format.json { render :show, status: :created, location: @contacorrente }
      else
        format.html { render :new }
        format.json { render json: @contacorrente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacorrentes/1
  # PATCH/PUT /contacorrentes/1.json
  def update
    respond_to do |format|
      if @contacorrente.update(contacorrente_params)
        format.html { redirect_to @contacorrente, notice: 'Contacorrente was successfully updated.' }
        format.json { render :show, status: :ok, location: @contacorrente }
      else
        format.html { render :edit }
        format.json { render json: @contacorrente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacorrentes/1
  # DELETE /contacorrentes/1.json
  def destroy
    @contacorrente.destroy
    respond_to do |format|
      format.html { redirect_to contacorrentes_url, notice: 'Contacorrente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacorrente
      @contacorrente = Contacorrente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contacorrente_params
      params.require(:contacorrente).permit(:tipo, :descricao, :banco, :agencia, :agente)
    end
end
