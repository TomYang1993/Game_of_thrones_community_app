Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'

  resources :feeds
  resources :feedvotes
  resources :questions
  resources :answers
  resources :stories
  resources :storylikes

  get '/' => 'homes#index'

  get '/housepages' => 'housepages#index'
  resources :userpages
  resources :housepages

end
