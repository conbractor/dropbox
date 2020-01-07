class DhwGeneratorsController < ApplicationController
  before_action :set_dhw_generator, only: [:show, :edit, :update, :destroy]

  # GET /dhw_generators
  # GET /dhw_generators.json
  def index
    @dhw_generators = DhwGenerator.all
  end

  # GET /dhw_generators/1
  # GET /dhw_generators/1.json
  def show
  end

  # GET /dhw_generators/new
  def new
    @dhw_generator = DhwGenerator.new
  end

  # GET /dhw_generators/1/edit
  def edit
  end

  # POST /dhw_generators
  # POST /dhw_generators.json
  def create
    @dhw_generator = DhwGenerator.new(dhw_generator_params)

    respond_to do |format|
      if @dhw_generator.save
        format.html { redirect_to @dhw_generator, notice: 'Dhw generator was successfully created.' }
        format.json { render :show, status: :created, location: @dhw_generator }
      else
        format.html { render :new }
        format.json { render json: @dhw_generator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dhw_generators/1
  # PATCH/PUT /dhw_generators/1.json
  def update
    respond_to do |format|
      if @dhw_generator.update(dhw_generator_params)
        format.html { redirect_to @dhw_generator, notice: 'Dhw generator was successfully updated.' }
        format.json { render :show, status: :ok, location: @dhw_generator }
      else
        format.html { render :edit }
        format.json { render json: @dhw_generator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dhw_generators/1
  # DELETE /dhw_generators/1.json
  def destroy
    @dhw_generator.destroy
    respond_to do |format|
      format.html { redirect_to dhw_generators_url, notice: 'Dhw generator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dhw_generator
      @dhw_generator = DhwGenerator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dhw_generator_params
      params.require(:dhw_generator).permit(:object_name, :isbem_id, :heat_gen_type, :dhw_gen_seff, :fuel_type, :store_system, :store_vol, :store_insulat_type, :store_insulat_thick, :sec_circulation, :heat_gen_post98, :heat_source, :hvac_system_eff, :chp)
    end
end
