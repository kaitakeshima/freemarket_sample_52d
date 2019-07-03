Rails.application.routes.draw do
  root 'items#index'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'users/registrations' }

  resources :users, only: [:destroy, :show] do
    resources :phones, only: [:new, :create]
    resources :houses, only: [:new, :create]
    resources :credits, only: [:new, :create]
    member do 
      get "mypage_pofile"
      get "mypage_identification"
      get "mypage_identification_update"
    end
  end

  resources :phones, only: [:create]
  resources :houses, only: [:update, :create]

  resources :items do
    collection do
      post 'pay/:id' => 'items#pay', as: 'pay'
    end
    member do
      get 'buy'
      get 'buy_done'
      get "flash_error"
    end
  end
  get 'users/sign_up/new' => 'users#sign_up_first' 
  get 'users/sign_up/done' => 'users#sign_up_done'
  get 'users/log_in/show' => 'users#log_in_view'
  get 'users/mypage' => 'users#mypage'
  get 'users/mypage/destroy' => 'users#mypage_session_destroy'
  get 'users/mypage/profile' => 'users#profile'
  get 'users/mypage/credit' => 'users#credit'
  get 'users/mypage/mypagecardtouroku' => 'users#mypagecardtouroku'
  get 'users/mypage/identification' => 'users#mypage_identification'
  get 'users/mypage/syuppin' => 'users#mypage_syuppin'
  get 'users/mypage/change_status/:id' => 'users#change_status'
end
