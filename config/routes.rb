Rails.application.routes.draw do

  # devise_for :webusers, controllers: {
  #       sessions: 'webusers/sessions'
  #     }
  as :webuser do
    get 'login' => 'webusers/sessions#new', as: :new_user_session
    post 'login' => 'webusers/sessions#create', as: :user_session
    get 'logout' => 'webusers//sessions#destroy', as: :destroy_user_session
  end
  resources :webusers

  namespace :admin do

  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  root :to => 'pages#home'

  get '/site-map', to: "about#index", as: 'about_index'


end
