class CreditsController < ApplicationController
  def new
    if user_signed_in?
      if session[:aa] == 3
      @credit = Credit.new
      session[:aa] == 0
      else
        redirect_back(fallback_location: root_path)
        flash[:alert] = "予期しないアクセスを検出しました"
      end
      else
        redirect_back(fallback_location: root_path)
        flash[:alert] = "予期しないアクセスを検出しました"
      end
  end
  
  def create
    @credit = Credit.new(credit_params)
    if @credit.save
      redirect_to users_sign_up_done_path
    else
      render action: :new
    end
  end

  private
  def credit_params
    params.require(:credit).permit(:card_number, :expiration_month, :expiration_year, :securyty_code, :user_id)
  end

end
