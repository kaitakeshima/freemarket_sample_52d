Rails.application.routes.draw do
  root 'items#index'
  devise_for :users
  devise_scope :user do
    #deviseで追加するルーティング記載
  end
  resources :items
  resources :users, only: [:show, :destroy] 
  #その他追加するルーティングはこの下に記載
end
