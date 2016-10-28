class OrdersController < ApplicationController
  before_action :find_order, except: [:index, :new, :create]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.price = rand(1000..8000)
    if !@order.valid?
      render :new
    # elsif existing_order = order.find_by(name: params[:order][:name])
    #   redirect_to order_path(existing_order)
    else
      @order.save
      redirect_to orders_path
    end
  end

  def edit
  end

  def update
  end

  private

  def order_params
    params.require(:order).permit(:id, :price, :size, feature_ids:[], :planet_id)
  end

  def find_order
    @order = Order.find(params[:id])
  end
end
