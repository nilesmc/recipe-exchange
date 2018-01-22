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
    resources :categories
    resources :recipes

  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  root :to => 'pages#home'

  get '/recipes', to: "recipes#index", as: 'recipes_index'
  get '/recipes/:slug', to: "recipes#detail", as: 'recipes_detail'


  get '/site-map', to: "about#index", as: 'about_index'


end
