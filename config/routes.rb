Rails.application.routes.draw do

  devise_for :webusers, controllers: {
        sessions: 'webusers/sessions',
        registraions: 'webusers/registrations'
      }
  devise_scope :webuser do
    get '/webusers/login', to: 'webusers/sessions#new', as: 'login'
    get '/webusers/signup', to: 'webusers/registrations#new', as: 'signup'
  end


  namespace :admin do

  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  root :to => 'pages#home'

  get '/site-map', to: "about#index", as: 'about_index'


end
