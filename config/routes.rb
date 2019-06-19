Rails.application.routes.draw do
  root 'items#index'
  devise_for :users
  # devise_scope :user do
  #   post 'users/sign_up/member' => 'users/registrations#new'
  #   get 'users/sign_up/phone' => 'users/registrations#'
  #   #deviseで追加するルーティング記載
  # end
  resources :items
  resources :users, only: [:show, :destroy] 
  #その他追加するルーティングはこの下に記載
  get 'users/sign_up/new' => 'users#sign_up1' 
  get 'users/sign_up/member' => 'users#sign_up2'
  get 'users/sign_up/phone' => 'users#sign_up3'
  get 'users/sign_up/address' => 'users#sign_up4'
  get 'users/sign_up/card' => 'users#sign_up5'
  get 'users/sign_up/done' => 'users#sign_up6'
  get 'users/log_in/show' => 'users#log_in_view'
  get 'users/mypage' => 'users#mypage_top'
  get 'users/mypage' => 'users#mypage_top'
  get 'users/mypage' => 'users#mypage_top'
end
