class HousesController < ApplicationController
  def new
    @house = House.new
  end
  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to root_path
    else
      redirect_to new_user_phone_path
    end
  end
  private
  def house_params
    params.require(:house).permit(:postalcode, :prefecture,:city, :address, :building, :user_id)
  end
end
