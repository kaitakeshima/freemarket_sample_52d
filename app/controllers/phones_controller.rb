class PhonesController < ApplicationController
  def new
    if user_signed_in?
      if session[:aa] == 1
      @phone = Phone.new
      session[:aa] = 2
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
    @phone = Phone.new(phone_params)
    if @phone.save
      redirect_to new_user_house_path(current_user)
    else
      render action: :new
    end
  end
  private
  def phone_params
    params.require(:phone).permit(:number, :user_id)
  end

end
