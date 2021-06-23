Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'

  get "/home/about" => "homes#about"
  get 'users' => 'users#index'
  resources :users,only:[:show,:edit,:update]
  resources :books
end
