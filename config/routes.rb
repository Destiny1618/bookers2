Rails.application.routes.draw do
  get 'relationships/followings'
  get 'relationships/followers'
  get "search" => "searches#search"
devise_for :users
root to: "homes#top"
resources :books, only: [:index, :show, :edit, :destroy, :create, :update] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
end
resources :users, only: [:index, :show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
end
get '/home/about' => "homes#about",as: 'about'
end
