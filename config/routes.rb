Rails.application.routes.draw do
devise_for :users
root to: "homes#top"
resources :books, only: [:index, :show, :edit, :destroy, :create, :update]
resources :users, only: [:index, :show, :edit, :update]
get '/home/about' => "homes#about",as: 'about'
end