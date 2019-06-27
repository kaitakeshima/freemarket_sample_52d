class PhonesController < ApplicationController
  def new
    @phone = Phone.new
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
