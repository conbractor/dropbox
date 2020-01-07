class GeneralsController < ApplicationController
  before_action :set_general, only: [:show, :edit, :update, :destroy]

  # GET /generals
  # GET /generals.json
  def index
    @generals = General.all
  end

  # GET /generals/1
  # GET /generals/1.json
  def show
  end

  # GET /generals/new
  def new
    @general = General.new
  end

  # GET /generals/1/edit
  def edit
  end

  # POST /generals
  # POST /generals.json
  def create
    @general = General.new(general_params)

    respond_to do |format|
      if @general.save
        format.html { redirect_to @general, notice: 'General was successfully created.' }
        format.json { render :show, status: :created, location: @general }
      else
        format.html { render :new }
        format.json { render json: @general.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generals/1
  # PATCH/PUT /generals/1.json
  def update
    respond_to do |format|
      if @general.update(general_params)
        format.html { redirect_to @general, notice: 'General was successfully updated.' }
        format.json { render :show, status: :ok, location: @general }
      else
        format.html { render :edit }
        format.json { render json: @general.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generals/1
  # DELETE /generals/1.json
  def destroy
    @general.destroy
    respond_to do |format|
      format.html { redirect_to generals_url, notice: 'General was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general
      @general = General.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def general_params
      params.require(:general).permit(:object_name, :b_type, :weather, :p_name, :b_address_0, :b_address_1, :b_city, :b_postcode, :c_name, :c_telephone, :c_address, :c_email, :c_accred_scheme_web, :c_city, :c_postcode, :c_reg_number, :c_reg_number_s, :c_reg_number_ir, :c_accred_scheme, :c_emp_trad_name, :c_emp_trad_address, :c_emp_trad_number, :c_rel_part_disc, :transaction_type, :c_qualifications, :soft_comp_name, :interface_val, :interface, :interface_version, :path_file_interface, :act_not, :building_area, :elec_power_factor, :nos_level, :c_insurer, :c_ins_pol_number, :c_ins_eff_date, :c_ins_exp_date, :c_ins_pi_limit, :b_insp_date, :uprn, :landmark_environment, :light_metering, :build_orientation, :html_dr_reports, :max_storey, :b_address_2, :b_address_3, :o_name, :o_telephone, :o_address, :o_city, :o_postcode, :b_loc_description, :dh_co2f, :dh_primf)
    end
end
