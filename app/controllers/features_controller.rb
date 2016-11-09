class FeaturesController < ApplicationController
  before_action :find_feature, except: [:index, :new, :create]

  def index
  	@features = Feature.all
    @feature = Feature.new
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @feature }
    end
  end

  def create
    @feature = Feature.new(feature_params)
    if !@feature.valid?
      flash[:alert] = "Please make sure you have entered in the correct information."
      # redirect_to features_path
    else
      @feature.save
      render json: @feature, status: 201 
    end
  end

  private

  def feature_params
    params.require(:feature).permit(:id, :name, :description)
  end

  def find_feature
    @feature = Feature.find(params[:id])
  end
end
