class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @items = []
    @items << Item.new
    @items << Item.new
    @items << Item.new
    @items << Item.new 

  end

  def create
    @order = Order.new(order_params)

    @order.save
    @items = []

    params["items"].each do |item|
      unless item["name"] == "" || item["price"] == ""
        @item = Item.new(item_params(item))
        @item.format_price
        @items.push(@item)
      end
    end

    @order.items.push(@items)
    
    redirect_to @order
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:name, :store_location) 
  end

  def item_params(param)
    param.permit(:name, :price)
  end
end

