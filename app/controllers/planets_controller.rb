class PlanetsController < ApplicationController
  before_action :find_planet, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @planets = Planet.all
    @most_populated = Planet.most_populated
    @most_moons = Planet.most_moons
    @most_expensive = Planet.most_expensive
  end

  def show
  end

  def new
    @planet = Planet.new
    @orders = @planet.orders.build
    @feature = @orders.build_feature
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.price = rand(1000000..8000000)
    @planet.user = current_user
    if !@planet.valid? || !user_signed_in?
      render :new
    else
      @planet.save
      flash[:alert] = "Your planet costs #{@planet.price} Pu. We have deducted this amount from your account. Thank you for your business."
      redirect_to planets_path
    end
  end

  def edit
    if @planet.user == current_user
      render :edit
    else
      flash[:alert] = "You must be the owner to edit a planet."
      redirect_to planets_path
    end
  end

  def update
    if @planet.user == current_user && @planet.update(planet_params)
      redirect_to planet_path(@planet)
    else
      flash[:alert] = "You must be the owner to edit a planet."
      redirect_to planets_path
    end
  end

  def destroy
    Planet.find(params[:id]).destroy
    redirect_to planets_url
  end

  private

  def planet_params
    params.require(:planet).permit(:id, :name, :price, :population, :moons, orders_attributes: [:id, :size, :feature_id, feature_attributes: [:id, :name, :description]])
  end

  def find_planet
    @planet = Planet.find(params[:id])
  end

end
