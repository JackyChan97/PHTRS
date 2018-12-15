class PotholesController < ApplicationController
  before_action :set_pothole, only: [:show, :edit, :update, :destroy]

  # GET /potholes
  # GET /potholes.json
  def index
    @potholes = Pothole.all
  end

  # GET /potholes/1
  # GET /potholes/1.json
  def show
  end

  # GET /potholes/new
  def new
    @pothole = Pothole.new
  end

  # GET /potholes/1/edit
  def edit
  end

  # POST /potholes
  # POST /potholes.json
  def create
    @pothole = Pothole.new(pothole_params)

    respond_to do |format|
      if @pothole.save
        format.html { redirect_to @pothole, notice: 'Pothole was successfully created.' }
        format.json { render :show, status: :created, location: @pothole }
      else
        format.html { render :new }
        format.json { render json: @pothole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potholes/1
  # PATCH/PUT /potholes/1.json
  def update
    respond_to do |format|
      if @pothole.update(pothole_params)
        format.html { redirect_to @pothole, notice: 'Pothole was successfully updated.' }
        format.json { render :show, status: :ok, location: @pothole }
      else
        format.html { render :edit }
        format.json { render json: @pothole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potholes/1
  # DELETE /potholes/1.json
  def destroy
    @pothole.destroy
    respond_to do |format|
      format.html { redirect_to potholes_url, notice: 'Pothole was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pothole
      @pothole = Pothole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pothole_params
      params.require(:pothole).permit(:streetAdress, :size, :location, :district)
    end
end
