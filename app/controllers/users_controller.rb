class UsersController < ApplicationController
  def sign_up1
    session[:aa] = 01
  end

  def sign_up3 
    session.delete(:aa)
  end
  
end