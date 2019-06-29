class UsersController < ApplicationController

  def sign_up_first
    session[:aa] = 1
  end
  def show
    if user_signed_in?
      if current_user.id == params[:id].to_i
          @address = House.find_by(user_id: current_user.id)
          session[:aa] = 6
      else
        redirect_back(fallback_location: root_path)
        flash[:alert] = "予期しないアクセスが発生しました"
      end
    else
      redirect_back(fallback_location: root_path)
      flash[:alert] = "予期しないアクセスが発生しました"
    end
  end
  def mypage_identification
    if user_signed_in?
      if current_user.id == params[:id].to_i
        @address = House.find_by(user_id: current_user.id)      
        if @address == nil
          session[:aa] = 7
          @address = House.new(user_id: current_user.id)
        else
          session[:aa] = 8
          redirect_to mypage_identification_update_user_path(current_user)
        end
      else
        redirect_back(fallback_location: root_path)
        flash[:alert] = "予期しないアクセスが発生しました"
      end
    else
      redirect_back(fallback_location: root_path)
      flash[:alert] = "予期しないアクセスが発生しました"
    end
  end
  def mypage_identification_update
    if user_signed_in?
      if current_user.id == params[:id].to_i
        if session[:aa] == 8
        @address =  House.find_by(user_id: current_user.id)
        else
          redirect_back(fallback_location: root_path)
          flash[:alert] = "予期しないアクセスが発生しました"
        end
      else
        redirect_back(fallback_location: root_path)
        flash[:alert] = "予期しないアクセスが発生しました"
      end
    else
      redirect_back(fallback_location: root_path)
      flash[:alert] = "予期しないアクセスが発生しました"
    end
  end
end
