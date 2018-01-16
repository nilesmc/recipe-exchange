Rails.application.routes.draw do

  devise_for :webusers
  namespace :admin do

  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  root :to => 'pages#home'

  get '/site-map', to: "about#index", as: 'about_index'


end
