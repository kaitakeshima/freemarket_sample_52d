class ItemsController < ApplicationController
  before_action :set_item, only: [:show,:edit,:update,:destroy, :buy, :buy_done, :flash_error]
  def flash_error  
    @items = Item.order('id DESC').limit(3)
  end
  def index
    session[:aa] = 00
    @items = Item.order('id DESC').limit(4)
    
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
    @items = Item.order('id DESC').limit(3)
  end

  def edit 

  end

  def update
    begin
      if @item.user_id == current_user.id
        @item.update(item_params)
        redirect_to root_path
      else
        raise
      end
        
    rescue
      redirect_to action: "flash_error"
    end
  end

  def destroy
    begin
      if @item.user_id == current_user.id
        @item.destroy
        redirect_to root_path
      else
        raise
      end
    rescue
      redirect_to action: "flash_error"
    end
  end
  def detail
  end
  def buy_confirmation
  end
  
  def buy
  end
  
  def buy_done
   
  end  

  def pay
    item = Item.find(params[:id])
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(currency: 'jpy', amount: item.price, card: params['payjp-token'])
    item.buyer_number = current_user.id
    item.save
    redirect_to "/items/#{item.id}/buy_done" 
  end


  private
  def item_params
    params.require(:item).permit(:name, :discription, :condition, :delivery_fee, :delivery_method, :delivery_days, :price, :size, :brand, :prefecture, :image, :status).merge(user_id: current_user.id)
  end
  def set_item
    @item = Item.find(params[:id])
  end
end
