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
      if session[:aa] == 7
        redirect_to mypage_identification_user_path(current_user)
        session[:aa] == 8
      else
        redirect_to new_user_credit_path(current_user)
      end
    else
    
      if session[:aa] == 7 
        redirect_back(fallback_location: root_path)
        flash[:alert] = "ユーザー情報保存の際エラーが発生しました"
      else
        render action: :new
        flash[:alert] = "ユーザー情報保存の際エラーが発生しました"
      end
    end
  end

  def update
    @house = House.find_by(id: params[:id])
    if @house.update(house_params)
      redirect_to  mypage_identification_user_path(current_user)

    else

    end
  end
  private
  def house_params
    params.require(:house).permit(:postalcode, :prefecture,:city, :address, :building, :user_id)
  end

end

