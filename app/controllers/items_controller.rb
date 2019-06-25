class ItemsController < ApplicationController
  def index
    session[:aa] = 00
    @items = Item.all.order('id DESC').limit(4)
    
  end
  def new
    @item = Item.new
  end
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render action: :new
    end
  end
  
  def show
    @item = Item.find(params[:id])
    @items = Item.all.order('id DESC').limit(6)
  end

  def detail
  end
  def buy_confirmation
  end
  
  def buy
    @item = Item.find(params[:id])
  end
  
  def buy_done
    @item = Item.find(params[:id])
  end  

  def pay
    item = Item.find(params[:id])
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(currency: 'jpy', amount: item.price, card: params['payjp-token'])
    
    redirect_to "/items/#{item.id}/buy_done" 
  end

  private
  def item_params
    params.require(:item).permit(:name, :discription, :condition, :delivery_fee, :delivery_method, :delivery_days, :price, :size, :brand, :prefecture, :image, :status).merge(user_id: current_user.id)
  end
end
