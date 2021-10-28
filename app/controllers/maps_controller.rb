class MapsController < ApplicationController
  before_action :set_map, only: %i[ show edit update destroy ]

  # GET /maps or /maps.json
  def index
    @post_images = PostImage.all
  end

  # GET /maps/1 or /maps/1.json
  def show
    @latitude = params[:latitude].to_f
    longitude = params[:longitude].to_f
  end

  def ab
    Dotenv.load
    client = GooglePlaces::Client.new ENV['GOOGLE_MAP_API_KEY']

    #位置情報取得
    latitude = params[:latitude].to_f
    longitude = params[:longitude].to_f

    #周辺スポット取得
    @spots = client.spots(latitude, longitude, :language => 'ja')
  end

  # GET /maps/new
  def new
    @latitude = params[:latitude]
    longitude = params[:longitude].to_f
    #Dotenv.load
    #client = GooglePlaces::Client.new ENV['GOOGLE_MAP_API_KEY']
    #@clients = client.spots(latitude, longitude)

  end

  # GET /maps/1/edit
  def edit
  end

  # POST /maps or /maps.json


  # PATCH/PUT /maps/1 or /maps/1.json
  def update
    respond_to do |format|
      if @map.update(map_params)
        format.html { redirect_to @map, notice: "Map was successfully updated." }
        format.json { render :show, status: :ok, location: @map }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maps/1 or /maps/1.json
  def destroy
    @map.destroy
    respond_to do |format|
      format.html { redirect_to maps_url, notice: "Map was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_map
      @map = Map.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def map_params
      params.require(:map).permit(:address, :latitude, :longitude)
    end
end
