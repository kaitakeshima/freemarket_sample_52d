class HousesController < ApplicationController
  def new
    if user_signed_in?
      if session[:aa] == 2
        @house = House.new
        session[:aa] = 3
      else
        redirect_back(fallback_location: root_path)
        flash[:alert] = "予期しないアクセスが発生しました"
      end
    else
      redirect_back(fallback_location: root_path)
      flash[:alert] = "予期しないアクセスが発生しました"
    end
  end

  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to new_user_credit_path(current_user)
    else
      render action: :new
    end
  end

  private
  def house_params
    params.require(:house).permit(:postalcode, :prefecture,:city, :address, :building, :user_id)
  end

end

