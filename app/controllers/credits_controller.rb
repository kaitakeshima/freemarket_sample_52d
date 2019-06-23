class CreditsController < ApplicationController
  def new
    @credit = Credit.new
  end
  def create
    @credit = Credit.new(credit_params)
    if @credit.save
      redirect_to users_sign_up_done_path
    else
      redirect_to new_user_credit_path
    end
  end
  private
  def credit_params
    params.require(:credit).permit(:card_number, :expiration_month, :expiration_year, :securyty_code, :user_id)
  end
end
