class ItemsController < ApplicationController
  before_action :set_item, only: [:show,:edit,:update,:destroy, :buy, :buy_done, :flash_error]
  def flash_error  
    @items = Item.order('id DESC').limit(3)
  end

  def index
    session[:aa] = 00
    @items = Item.where(status: 1).order('id DESC').limit(4)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
      flash[:notice] = "出品が完了しました"
    else
      render action: :new
      flash[:alert] = "商品情報が正しくありません"
    end
  end
  
  def show
    @items = Item.where(user_id: @item.user_id).order('id DESC').limit(3)
  end

  def edit 
    if user_signed_in?
      if @item.user_id == current_user.id

      else
      redirect_back(fallback_location: root_path)
      flash[:alert] = "予期しないアクセスが発生しました"
      end
    else
      redirect_back(fallback_location: root_path)
      flash[:alert] = "予期しないアクセスが発生しました"
    end
  end

  def update
    if @item.update(item_params)
      redirect_to root_path
      flash[:notice] = "編集が完了しました"
    else
      flash[:alert] = "商品情報が正しくありません"
      render  action: :edit
    end
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    else
      redirect_to action: "flash_error"
    end
  end

  def detail
  end

  def buy_confirmation
  end
  
  def buy
    if user_signed_in?
      if @item.buyer_number == nil
      else
        redirect_back(fallback_location: root_path)
        flash[:alert] = "予期しないアクセスが発生しました"
      end
    else
      redirect_back(fallback_location: root_path)
      flash[:alert] = "予期しないアクセスが発生しました"
    end
  end
  
  def buy_done
    if user_signed_in?
    if current_user.id == @item.buyer_number
    else
      redirect_back(fallback_location: root_path)
      flash[:alert] = "予期しないアクセスが発生しました"
    end
    else
      redirect_back(fallback_location: root_path)
      flash[:alert] = "予期しないアクセスが発生しました"
    end
  end  

  def pay
    item = Item.find(params[:id])
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(currency: 'jpy', amount: item.price, card: params['payjp-token'])
    item.buyer_number = current_user.id
    item.save
    redirect_to "/items/#{item.id}/buy_done" 
  end

  def change_status
    @item = Item.find(params[:id])
  end

  private
  def item_params
    params.require(:item).permit(:name, :discription, :condition, :delivery_fee, :delivery_method, :delivery_days, :price, :size, :brand, :prefecture, :image, :status, :category).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
