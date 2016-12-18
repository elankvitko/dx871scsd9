class ItemsController < ApplicationController
  before_action :authenticate_user!
  def new
    @item = Item.new
  end

  def create
    @item = Item.new( item_params )

    if @item.save
      redirect_to new_item_path order_id: @item.order_id
    end
  end

  private

    def item_params
      params.require( :item ).permit( :order_id, :store, :name, :model_number )
    end
end
