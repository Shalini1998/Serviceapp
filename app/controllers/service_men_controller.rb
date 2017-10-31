class ServiceMenController < ApplicationController
  before_action :set_service_man, only: [:show, :edit, :update]

  # GET /service_men
  # GET /service_men.json
  def index
    @service_men = ServiceMan.all
  end

  # GET /service_men/1
  # GET /service_men/1.json
  def show
  end

  # GET /service_men/new
  def new
    @service_man = ServiceMan.new
  end

  # GET /service_men/1/edit
  def edit
  end

  # POST /service_men
  # POST /service_men.json
  def create
    @service_man = ServiceMan.new(service_man_params)

    respond_to do |format|
      if @service_man.save
        format.html { redirect_to @service_man, notice: 'Service man was successfully created.' }
        format.json { render :show, status: :created, location: @service_man }
      else
        format.html { render :new }
        format.json { render json: @service_man.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_men/1
  # PATCH/PUT /service_men/1.json
  def update
    respond_to do |format|
      if @service_man.update(service_man_params)
        format.html { redirect_to @service_man, notice: 'Service man was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_man }
      else
        format.html { render :edit }
        format.json { render json: @service_man.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_men/1
  # DELETE /service_men/1.json
 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_man
      @service_man = ServiceMan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_man_params
      params.require(:service_man).permit(:first_name, :last_name, :contact_no, :address, :profile_pic, :email, :shop_id, :age, :latitude, :longitude)
    end
end
