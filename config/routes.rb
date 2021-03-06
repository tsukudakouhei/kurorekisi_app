Rails.application.routes.draw do
  
  
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  post 'users/:id/update' => "users#update"
  get 'users/:id/edit' => "users#edit"
  post 'users/create' => "users#create"
  get 'signup' => "users#new"
  get 'users/index' => "users#index"
  get 'users/:id' => "users#show"
  
  

  get 'posts/index' => "posts#index"
  #showの前に書かないとエラーでる
  get 'posts/new' => "posts#new"
  post 'posts/create' => "posts#create"
  get 'posts/:id' => "posts#show"
  get 'posts/:id/edit' => "posts#edit"
  post 'posts/:id/update' => "posts#update"
  post 'posts/:id/destroy' => "posts#destroy"
  

  get '/' => "home#top"
  
end
