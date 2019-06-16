Rails.application.routes.draw do
  devise_for :users, :controllers => {
    registrations: "users/registrations"
  }
  devise_scope :user do
    get "/users/sign_up" => "registrations#new"
    post "users/sign_up/user-info" => 'users/registrations#user-info'
    post "users/sign_up/phone_number" => "users/registrations#phone_mumber"
    post "users/sign_up/address" => "users/registrations#address"
    post "users/sign_up/credit" => "users/registrations#credit"
    post "users/sign_up/confirm" => "users/registrations#confirm"

  end
   root 'items#index'
end
