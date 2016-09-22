Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'user/registrations' }

  root 'homes#index'

  get '/' => 'homes#index'
  get '/test' => 'homes#show'
  patch '/test' => 'homes#update'
  get '/skip' => 'homes#skip'
  get '/usrinterfaces' => 'usrinterfaces#index'
  get '/usrinterface' => 'usrinterfaces#show'

  resources :feeds
  resources :questions
  resources :answers
  resources :housepages
  resources :userpages

  namespace :api do
    namespace :v1 do
      post '/feedvotes' => 'feedvotes#create'
      get '/feeds' => 'feeds#index'
      get '/feeds/:id' => 'feeds#show'
    end
  end

  # save for further developing
  # resources :stories
  # resources :storylikes
end
