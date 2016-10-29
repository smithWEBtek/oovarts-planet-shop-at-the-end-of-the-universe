class FeaturesController < ApplicationController
  before_action :find_feature, except: [:index, :new, :create]

  def index
  	@features = Feature.all
  end

  def show
  end

  private

  def feature_params
    params.require(:feature).permit(:id, :description)
  end

  def find_feature
    @feature = Feature.find(params[:id])
  end
end
