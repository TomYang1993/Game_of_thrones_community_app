Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'user/registrations' }

  root 'homes#index'

  get '/' => 'homes#index'
  get '/test' => 'homes#show'
  patch '/test' => 'homes#update'
  get '/skip' => 'homes#skip'
  get '/usrinterfaces' => 'usrinterfaces#index'
  get '/usrinterface' => 'usrinterfaces#show'
  get '/usrinterface/setting' => 'usrinterfaces#setting'
  get '/map' => 'maps#index'

  resources :feeds
  resources :questions
  get '/hot' => 'questions#hot'
  get '/filternew' => 'questions#filternew'
  resources :answers
  resources :housepages

  namespace :api do
    namespace :v1 do
      post '/feedvotes' => 'feedvotes#create'
      post '/upvotes' => 'feedvotes#upvotecreate'
      post '/downvotes' => 'feedvotes#downvotecreate'
      get '/feeds' => 'feeds#index'
      get '/feeds/:id' => 'feeds#show'
      get '/questions' => 'questions#index'
      get '/questions/:id' => 'questions#show'
      post '/answers' => 'answers#create'
    end
  end

  # save for further developing
  # resources :stories
  # resources :storylikes
end
