class CepsController < ApplicationController
  before_action :set_cep, only: [:show, :update, :destroy]

  # GET /ceps
  def index
    @ceps = Cep.all

    render json: @ceps
  end

  # GET /ceps/1
  def show
    render json: @cep
  end

  # POST /ceps
  def create
    @cep = Cep.new(cep_params)

    if @cep.save
      render json: @cep, status: :created, location: @cep
    else
      render json: @cep.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ceps/1
  def update
    if @cep.update(cep_params)
      render json: @cep
    else
      render json: @cep.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ceps/1
  def destroy
    @cep.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cep
      @cep = Cep.where(cep:params[:id]).first
      if @cep.nil?
        @api = Correios::ConsultaCep.new 
        @cep = @api.get(params[:id])
      end
    end

    # Only allow a list of trusted parameters through.
    def cep_params
      params.require(:cep).permit(:endereco, :bairro, :cidade, :uf, :cep)
    end
end
