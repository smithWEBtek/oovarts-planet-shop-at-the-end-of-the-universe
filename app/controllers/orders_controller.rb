class OrdersController < ApplicationController
  before_action :find_order, except: [:index, :new, :create]
  before_action :set_feature
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @orders = @feature.orders
    # @orders = Order.all

    render 'orders/index', layout: false
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @order }
    end
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.price = rand(1000..8000)
    if !@order.valid? || @order.feature_id.nil? || @order.feature_id.blank? || @order.planet_id.blank?
      flash[:alert] = "Please make sure you have entered in the correct information."
      redirect_to new_order_path
    else
      @order.save
      flash[:notice] = "Your new #{@order.feature.name.downcase} for #{@order.planet.name.titleize} costs #{@order.price * 1000} Pu. We have deducted this amount from your account. Thank you for your business."
      redirect_to user_path(@order.planet.user)
    end
  end

  private

  def order_params
    params.require(:order).permit(:id, :price, :size, :feature_id, :planet_id, feature_attributes: [:id, :name, :description])
  end

  def find_order
    @order = Order.find(params[:id])
  end

  def set_feature
    @feature = Feature.find(params[:feature_id])
  end
end
