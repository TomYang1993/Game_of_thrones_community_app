Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  get '/' => 'homes#index'
  get '/test' => 'homes#show'

  resources :feeds
  resources :feedvotes
  resources :questions
  resources :answers
  resources :stories
  resources :storylikes
  resources :housepages

  get '/usrinterfaces' => 'usrinterfaces#index'
  get '/usrinterface' => 'usrinterfaces#show'

  resources :userpages


end
