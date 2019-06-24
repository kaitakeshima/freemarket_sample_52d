class ItemsController < ApplicationController
  def index
    session[:aa] = 00
    # @items = Item.all.order('id DESC').limit(4)
  end
  
  def new
    @item = Item.new
  end

  def detail
  end
  def buy_confirmation
  end
  def pay
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(currency: 'jpy', amount: 100, card: params['payjp-token'])
    redirect_to items_buy_done_path, notice: "支払いが完了しました"
  end
end
