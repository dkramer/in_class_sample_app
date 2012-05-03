InClassSampleApp::Application.routes.draw do
  resources :users do
    member do
      get :following, :followers
    end
  end
  
  get "sessions/new"

  resources :users
  resources :sessions,   :only => [:new, :create, :destroy]
  resources :microposts, :only => [:create, :destroy]

  match '/signup',  :to => 'users#new'
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'

  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  #match '/pages/home' => 'pages#home'

  root :to => 'pages#home'
  match '/', :to => 'sessions#new'
end
