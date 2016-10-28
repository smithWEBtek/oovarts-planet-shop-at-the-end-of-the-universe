class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
    @most_populated = Planet.most_populated
    @most_moons = Planet.most_moons
    @most_expensive = Planet.most_expensive
  end

  def show
    @planet = Planet.find(params[:id])
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

end
