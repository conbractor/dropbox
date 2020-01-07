class ZonesController < ApplicationController
  before_action :set_zone, only: [:show, :edit, :update, :destroy]

  # GET /zones
  # GET /zones.json
  def index
    @zones = Zone.all
  end

  # GET /zones/1
  # GET /zones/1.json
  def show
  end

  # GET /zones/new
  def new
    @zone = Zone.new
  end

  # GET /zones/1/edit
  def edit
  end

  # POST /zones
  # POST /zones.json
  def create
    @zone = Zone.new(zone_params)

    respond_to do |format|
      if @zone.save
        format.html { redirect_to @zone, notice: 'Zone was successfully created.' }
        format.json { render :show, status: :created, location: @zone }
      else
        format.html { render :new }
        format.json { render json: @zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zones/1
  # PATCH/PUT /zones/1.json
  def update
    respond_to do |format|
      if @zone.update(zone_params)
        format.html { redirect_to @zone, notice: 'Zone was successfully updated.' }
        format.json { render :show, status: :ok, location: @zone }
      else
        format.html { render :edit }
        format.json { render json: @zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zones/1
  # DELETE /zones/1.json
  def destroy
    @zone.destroy
    respond_to do |format|
      format.html { redirect_to zones_url, notice: 'Zone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zone
      @zone = Zone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zone_params
      params.require(:zone).permit(:object_name, :isbem_id, :activity, :activity_name, :multiplier, :area, :height, :vent_zone_hvac, :q_v_type, :f_ctrl_vent_dem, :heat_rec_system, :heat_rec_seff, :heat_rec_var_eff, :hepa_filter, :vent_mech_exh, :destrat_fan, :vent_sfp, :sfp_tu, :q50_inf, :dhw_generator, :dhw_pipe_len, :light_case, :light_type, :light_display_eff, :light_control, :light_dl_aut_zone, :light_occ_sens_t, :light_time_switch, :jnct_roof_wall_mc, :jnct_wall_grnd_mc, :jnct_wall_wall_mc, :jnct_wall_flr_mc, :jnct_lintel_mc, :jnct_sill_mc, :jnct_jamb_mc, :jnct_roof_wall, :jnct_wall_grnd, :jnct_wall_wall, :jnct_wall_flr, :jnct_lintel, :jnct_sill, :jnct_jamb, :jnct_accr_detail, :jnct_accr_detail_mc, :night_cooling, :q_v_m_exh, :vent_sfp_exh, :vent_mech_exh_ncm, :lamp_ballast_eff_dl, :constant_illum, :light_dl_area_perc, :light_paras_pw_occ, :shell_assumed, :light_act_watt, :light_lux_design, :light_photo_type, :light_paras_pw, :light_ph_back)
    end
end
