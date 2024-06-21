class OrdersController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
    @order = Order.new
    @address = Address.new
  end

  def create
    @order = Order.new(order_params)
    Address.create(address_params)
    if @order.valid?
      @order.save
      redirect_to root_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  def address_params
    params.permit(:post_number, :prefecture_id, :city, :number, :building, :phone_number).merge(order_id: @order.id)
  end
end
