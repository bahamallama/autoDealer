class CarsController < ApplicationController
  #before_action :set_car, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!, only: [:new , :create, :edit, :update, :destroy]
  #before_action :check_user, only: [:edit, :update, :destroy]
  load_and_authorize_resource
  before_filter :load_images, only: [:show]
  #remove skip_before_filter :verify_authenticity_token after setting devise?
  #skip_before_filter :verify_authenticity_token

  # GET /cars
  # GET /cars.json
  def index
    @cars = Car.all
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    gon.watch.carid = @car.id
  end

  # GET /cars/new
  def new
  #  @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  # POST /cars.json
  def create
   # @car = Car.new(car_params)
    @car.user_id = current_user.id

    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:make, :description, :model, :year, :price, :carType, :transmission, :interior, :miles, :drive, :exterior, :vin, :image )
    end
    
    def load_images
      @images = Image.all
    end
    
    def check_user
      if current_user != @car.user
        redirect_to root_url, alert: "Sorry this car belongs to someone else"
      end
    end
end
