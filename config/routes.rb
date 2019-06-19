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
  get 'users/sign_up' => 'users#sign_up1'
  get 'users/sign_up' => 'users#sign_up2'
  get 'users/sign_up' => 'users#sign_up3'
  get 'users/sign_up'
end
