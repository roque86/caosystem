class CaosController < ApplicationController
  before_action :set_cao, only: %i[ show edit update destroy ]

  # GET /caos or /caos.json
  def index
    @caos = Cao.all
  end

  # GET /caos/1 or /caos/1.json
  def show
  end

  # GET /caos/new
  def new
    @cao = Cao.new
  end

  # GET /caos/1/edit
  def edit
  end

  # POST /caos or /caos.json
  def create
    @cao = Cao.new(cao_params)

    respond_to do |format|
      if @cao.save
        format.html { redirect_to cao_url(@cao), notice: "Cao was successfully created." }
        format.json { render :show, status: :created, location: @cao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caos/1 or /caos/1.json
  def update
    respond_to do |format|
      if @cao.update(cao_params)
        format.html { redirect_to cao_url(@cao), notice: "Cao was successfully updated." }
        format.json { render :show, status: :ok, location: @cao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caos/1 or /caos/1.json
  def destroy
    @cao.destroy

    respond_to do |format|
      format.html { redirect_to caos_url, notice: "Cao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cao
      @cao = Cao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cao_params
      params.require(:cao).permit(:nome, :raca, :nome_pai, :nome_propr)
    end
end
