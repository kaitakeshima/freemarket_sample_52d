Rails.application.routes.draw do
  root 'items#index'
  devise_for :users
  devise_scope :user do
    post 'users/sign_up/sns' => 'users/registrations'
    #deviseで追加するルーティング記載
  end
  resources :items
  resources :users, only: [:show, :destroy] 
  #その他追加するルーティングはこの下に記載
  get 'users/sign_up' => 'users#user_sign_up'
  get 'users/sign_up/' => 'users#aaa_sign_up'
  get 'users/sign_up/'
end
