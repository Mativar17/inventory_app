class AseosController < ApplicationController
  before_action :set_aseo, only: %i[ show edit update destroy ]

  # GET /aseos or /aseos.json
  def index
    @aseos = Aseo.all
  end

  # GET /aseos/1 or /aseos/1.json
  def show
  end

  # GET /aseos/new
  def new
    @aseo = Aseo.new
  end

  # GET /aseos/1/edit
  def edit
  end

  # POST /aseos or /aseos.json
  def create
    @aseo = Aseo.new(aseo_params)

    respond_to do |format|
      if @aseo.save
        format.html { redirect_to aseo_url(@aseo), notice: "Aseo was successfully created." }
        format.json { render :show, status: :created, location: @aseo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aseo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aseos/1 or /aseos/1.json
  def update
    respond_to do |format|
      if @aseo.update(aseo_params)
        format.html { redirect_to aseo_url(@aseo), notice: "Aseo was successfully updated." }
        format.json { render :show, status: :ok, location: @aseo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aseo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aseos/1 or /aseos/1.json
  def destroy
    @aseo.destroy

    respond_to do |format|
      format.html { redirect_to aseos_url, notice: "Aseo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def contador
    @aseo
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aseo
      @aseo = Aseo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aseo_params
      params.require(:aseo).permit(:name, :sku, :valor_neto_unitario, :stock_inicial, :compra_mes)
    end
end
