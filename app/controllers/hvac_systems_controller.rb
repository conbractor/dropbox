class HvacSystemsController < ApplicationController
  before_action :set_hvac_system, only: [:show, :edit, :update, :destroy]

  # GET /hvac_systems
  # GET /hvac_systems.json
  def index
    @hvac_systems = HvacSystem.all
  end

  # GET /hvac_systems/1
  # GET /hvac_systems/1.json
  def show
  end

  # GET /hvac_systems/new
  def new
    @hvac_system = HvacSystem.new
  end

  # GET /hvac_systems/1/edit
  def edit
  end

  # POST /hvac_systems
  # POST /hvac_systems.json
  def create
    @hvac_system = HvacSystem.new(hvac_system_params)

    respond_to do |format|
      if @hvac_system.save
        format.html { redirect_to @hvac_system, notice: 'Hvac system was successfully created.' }
        format.json { render :show, status: :created, location: @hvac_system }
      else
        format.html { render :new }
        format.json { render json: @hvac_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hvac_systems/1
  # PATCH/PUT /hvac_systems/1.json
  def update
    respond_to do |format|
      if @hvac_system.update(hvac_system_params)
        format.html { redirect_to @hvac_system, notice: 'Hvac system was successfully updated.' }
        format.json { render :show, status: :ok, location: @hvac_system }
      else
        format.html { render :edit }
        format.json { render json: @hvac_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hvac_systems/1
  # DELETE /hvac_systems/1.json
  def destroy
    @hvac_system.destroy
    respond_to do |format|
      format.html { redirect_to hvac_systems_url, notice: 'Hvac system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hvac_system
      @hvac_system = HvacSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hvac_system_params
      params.require(:hvac_system).permit(:object_name, :isbem_id, :type_0, :heat_source, :chp, :fuel_type, :fuel_type_cool, :heat_rec_system, :heat_rec_seff, :heat_rec_var_eff, :cool_sseer, :heat_sseff, :aux_energy_corr, :variable_speed_pump, :heat_gen_seff, :eff_default_heat, :metering, :sfp_check, :room_time_ctrl, :room_temp_ctrl, :cen_time_ctrl, :cool_gen_seer, :eff_default_cool, :cool_gen_eer, :weather_comp, :duct_leakage_pc, :optimum_start, :mixed_mode, :chiller_type, :sfp, :dhw_served_ref)
    end
end
