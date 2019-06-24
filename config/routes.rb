Rails.application.routes.draw do
  root 'items#index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'users/registrations' }
 
  # devise_scope :user do
  #   post 'users/sign_up/member' => 'users/registrations#new'
  #   get 'users/sign_up/phone' => 'users/registrations#'
  #   #deviseで追加するルーティング記載
  # end

  resources :users, only: [:destroy] do
    resources :phones, only: [:new, :create]
    resources :houses, only: [:new, :create]
    resources :credits, only: [:new, :create]
  end
  resources :phones, only: [:create]
  resources :items, only: [:index, :new, :create] do
    collection do
      post 'pay' 
    end
  end
  resources :users, only: [:destroy] 

  #その他追加するルーティングはこの下に記載
  get 'users/sign_up/new' => 'users#sign_up1' 
  get 'users/sign_up/member' => 'users#sign_up2'
  get 'users/sign_up/phone' => 'users#sign_up3'
  get 'users/sign_up/address' => 'users#sign_up4'
  get 'users/sign_up/card' => 'users#sign_up5'
  get 'users/sign_up/done' => 'users#sign_up6'
  get 'users/log_in/show' => 'users#log_in_view'
  get 'users/mypage' => 'users#mypage'
  get 'users/mypage/destroy' => 'users#mypage_session_destroy'
  get 'users/mypage/profile' => 'users#profile'
  get 'users/mypage/credit' => 'users#credit'
  get 'users/mypage/mypagecardtouroku' => 'users#mypagecardtouroku'
  get 'users/mypage/identification' => 'users#mypage_identification'
  get 'items/show' => 'items#show'
  get 'items/buy_confirmation' => 'items#buy_confirmation'
  get 'items/test' => 'items#test'
  get 'items/buy_done' => 'items#buy_done'
end
