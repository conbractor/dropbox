class RecUsersController < ApplicationController
  before_action :set_rec_user, only: [:show, :edit, :update, :destroy]

  # GET /rec_users
  # GET /rec_users.json
  def index
    @rec_users = RecUser.all
  end

  # GET /rec_users/1
  # GET /rec_users/1.json
  def show
  end

  # GET /rec_users/new
  def new
    @rec_user = RecUser.new
  end

  # GET /rec_users/1/edit
  def edit
  end

  # POST /rec_users
  # POST /rec_users.json
  def create
    @rec_user = RecUser.new(rec_user_params)

    respond_to do |format|
      if @rec_user.save
        format.html { redirect_to @rec_user, notice: 'Rec user was successfully created.' }
        format.json { render :show, status: :created, location: @rec_user }
      else
        format.html { render :new }
        format.json { render json: @rec_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rec_users/1
  # PATCH/PUT /rec_users/1.json
  def update
    respond_to do |format|
      if @rec_user.update(rec_user_params)
        format.html { redirect_to @rec_user, notice: 'Rec user was successfully updated.' }
        format.json { render :show, status: :ok, location: @rec_user }
      else
        format.html { render :edit }
        format.json { render json: @rec_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rec_users/1
  # DELETE /rec_users/1.json
  def destroy
    @rec_user.destroy
    respond_to do |format|
      format.html { redirect_to rec_users_url, notice: 'Rec user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rec_user
      @rec_user = RecUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rec_user_params
      params.require(:rec_user).permit(:object_name, :code, :user_in_out, :rec_comment)
    end
end
