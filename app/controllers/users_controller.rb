class UsersController < ApplicationController
  def sign_up_first
    session[:aa] = 1
  end
  
  def mypage_syuppin
    @items = Item.where(user_id: current_user.id)
  end
end
