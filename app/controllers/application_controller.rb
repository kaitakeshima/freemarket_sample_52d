class ApplicationController < ActionController::Base
  before_action :basic_auth,  if: :production?
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
    users_sign_up_phone_path
  end
  private

  def production?
    Rails.env.production?
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :buyer_number, :image, :family_name, :first_name, :family_name_kana, :first_name_kana, :birthday, :phone_number, :prefecture, :city, :address])
  end
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end