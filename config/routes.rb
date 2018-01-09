Rails.application.routes.draw do


  root :to => 'pages#home'

  get '/site-map', to: "about#index", as: 'about_index'


end
