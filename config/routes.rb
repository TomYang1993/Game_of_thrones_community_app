Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'user/registrations' }
  root 'homes#index'
  get '/' => 'homes#index'
  get '/test' => 'homes#show'
  patch '/test' => 'homes#update'
  get '/skip' => 'homes#skip'

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
