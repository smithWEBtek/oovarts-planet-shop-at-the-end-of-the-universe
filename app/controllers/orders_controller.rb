class OrdersController < ApplicationController
  before_action :find_order, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.price = rand(1000..8000)
    if !@order.valid? || @order.feature_id.nil?
      flash[:alert] = "Please make sure you have entered in the correct information."
      redirect_to new_order_path
    else
      @order.save
      flash[:notice] = "Your new #{@order.feature.name.downcase} for #{@order.planet.name.titleize} costs #{@order.price * 1000} Pu. We have deducted this amount from your account. Thank you for your business."
      redirect_to user_path(@order.planet.user)
    end
  end

  def edit
  end

  def update
  end

  private

  def order_params
    params.require(:order).permit(:id, :price, :size, :feature_id, :planet_id, feature_attributes: [:id, :name, :description])
  end

  def find_order
    @order = Order.find(params[:id])
  end
end
