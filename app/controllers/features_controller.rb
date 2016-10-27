class FeaturesController < ApplicationController
  def index
  	@features = Feature.all
  end

  def show
  	@feature = Feature.find(params[:id])
  end

  def new
  end

  def create
  end
end
