class CompliancesController < ApplicationController
  before_action :set_compliance, only: [:show, :edit, :update, :destroy]

  # GET /compliances
  # GET /compliances.json
  def index
    @compliances = Compliance.all
  end

  # GET /compliances/1
  # GET /compliances/1.json
  def show
  end

  # GET /compliances/new
  def new
    @compliance = Compliance.new
  end

  # GET /compliances/1/edit
  def edit
  end

  # POST /compliances
  # POST /compliances.json
  def create
    @compliance = Compliance.new(compliance_params)

    respond_to do |format|
      if @compliance.save
        format.html { redirect_to @compliance, notice: 'Compliance was successfully created.' }
        format.json { render :show, status: :created, location: @compliance }
      else
        format.html { render :new }
        format.json { render json: @compliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compliances/1
  # PATCH/PUT /compliances/1.json
  def update
    respond_to do |format|
      if @compliance.update(compliance_params)
        format.html { redirect_to @compliance, notice: 'Compliance was successfully updated.' }
        format.json { render :show, status: :ok, location: @compliance }
      else
        format.html { render :edit }
        format.json { render json: @compliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compliances/1
  # DELETE /compliances/1.json
  def destroy
    @compliance.destroy
    respond_to do |format|
      format.html { redirect_to compliances_url, notice: 'Compliance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compliance
      @compliance = Compliance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compliance_params
      params.require(:compliance).permit(:object_name, :epc_type, :eng_heritage, :br_stage, :air_con_installed, :air_con_kw, :air_con_inspection, :alt_sys_consider, :epc_language, :shell_and_core, :modular_portable, :distress_purchase, :air_con_kw_exact)
    end
end
