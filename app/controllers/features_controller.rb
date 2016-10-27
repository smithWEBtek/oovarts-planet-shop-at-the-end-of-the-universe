class FeaturesController < ApplicationController
  def index
  	@features = Feature.all
  end

  def show
  end

  def new
  end

  def create
  end
end
