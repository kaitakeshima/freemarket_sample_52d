class ApplicationController < ActionController::Base
  before_action :basic_auth,  if: :production?
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if session[:aa] == 1
      flash[:notice] = "ユーザー新規登録完了しました。次に電話番号を入力してください" 
      new_user_phone_path(current_user)
    else
      flash[:notice] = "ログインに成功しました" 
      root_url  
    end
  end
    def after_update_path_for(resource)
      if session[:aa] == 9
        flash[:notice] = "アカウント情報を変更しました。"
        edit_user_registration_path
      else
        edit_user_registration_path
      end
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