InClassSampleApp::Application.routes.draw do
  get "users/new"

  match '/signup',  :to => 'users#new'

  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  #match '/pages/home' => 'pages#home'

  root :to => 'pages#home'
  
end
