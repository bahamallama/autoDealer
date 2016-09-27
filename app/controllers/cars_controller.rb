class CarsController < ApplicationController
  #before_action :set_car, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!, only: [:new , :create, :edit, :update, :destroy]
  #before_action :check_user, only: [:edit, :update, :destroy]
  load_and_authorize_resource
  before_filter :load_images, only: [:show]
  #remove skip_before_filter :verify_authenticity_token after setting devise?
  #skip_before_filter :verify_authenticity_token

  def listing
    if current_user.admin?
      @cars = Car.all
    else
      @cars = Car.where(user: current_user)
    end
  end
  
  def featured
    if current_user.admin?
      @cars = Car.where(:published => true, :featured => true)
    else
      @cars = Car.where(:published => true, :featured => true, user: current_user)
    end
  end
  
  def sold
    if current_user.admin?
      @cars = Car.where(:sold => true)
    else
      @cars = Car.where(:sold => true, user: current_user)
    end
  end
  
  def reduced
    if current_user.admin?
      @cars = Car.where(:reduced => true)
    else
      @cars = Car.where(:reduced => true, user: current_user)
    end
  end
 
  def sale
    if current_user.admin?
      @cars = Car.where(:sale => true)
    else
      @cars = Car.where(:sale => true, user: current_user)
    end
  end
  
  # GET /cars
  # GET /cars.json
  def index    
    if @q.blank?
      @cars = @cars.where(:published => true).paginate(:page => params[:page], :per_page => 20)
    else
      @q = Car.ransack(params[:q])
      if @q.result.blank?
        redirect_to :back, alert: "Sorry, No Results Found!"
      else
        @cars = @q.result(distinct: true).where(:published => true).paginate(:page => params[:page], :per_page => 8)
      end
    end
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    gon.watch.car_id = @car.id
    @carmessage = Carmessage.new
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
  #  @car = Car.update(order_params)
    
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
      params.require(:car).permit(:make_id, :description, :model_id, :year, :price, :carType, :transmission, :interior, :miles, :drive, :exterior, :epa, :vin, :image, :published, :featured, :reduced, :sale, :sold )
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
