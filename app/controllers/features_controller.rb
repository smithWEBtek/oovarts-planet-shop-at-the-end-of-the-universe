class FeaturesController < ApplicationController
  before_action :find_feature, except: [:index, :new, :create]

  def index
  	@features = Feature.all
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @feature }
    end
  end

  private

  def feature_params
    params.require(:feature).permit(:id, :description)
  end

  def find_feature
    @feature = Feature.find(params[:id])
  end
end
