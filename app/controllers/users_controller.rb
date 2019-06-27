class UsersController < ApplicationController
  def sign_up_first
    session[:aa] = 1
  end
end
