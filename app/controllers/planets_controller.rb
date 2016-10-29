class PlanetsController < ApplicationController
  before_action :find_planet, except: [:index, :new, :create]

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
    if !@planet.valid?
      render :new
    else
      @planet.save
      redirect_to planets_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def planet_params
    params.require(:planet).permit(:id, :name, :price, :population, :moons, orders_attributes: [:id, :size, :feature_id, feature_attributes: [:id, :name, :description]])
  end

  def find_planet
    @planet = Planet.find(params[:id])
  end

end
