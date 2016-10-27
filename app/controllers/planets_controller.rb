class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def show
  end

  def new
    @planet = Planet.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def planet_params
    params.require(:planet).permit(:id, :name, :price, :population, :moons)
  end

  def find_planet
    @planet = Planet.find(params[:id])
  end
end
