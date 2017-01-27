class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders = Order.all.sort_by &:created_at
    @orders = @orders.reverse
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new( order_params )

    if @order.save
      redirect_to new_item_path
    end
  end

  def show
    @order = Order.find_by( id: params[ 'id' ] )
    @items = @order.items.sort_by &:created_at
    @items = @items.reverse
  end

  def destroy
    if request.xhr?
      @order = Order.find( params[ 'order' ] )
      @order.items.destroy_all
      @order.destroy
    end
  end

  private

    def order_params
      params.require( :order ).permit( :user_id, :order_number )
    end
end
