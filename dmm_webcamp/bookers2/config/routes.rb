Rails.application.routes.draw do
  get 'book_comments/create'
  get 'book_comments/destroy'
  get 'favorites/create'
  get 'favorites/destroy'
  devise_for :users

  resources :books, only: %i[new create index show edit update destroy] do
    resource :favorites, only: %i[create destroy]
    resources :book_comments, only: %i[create destroy]
  end
  resources :users, only: %i[index show edit update]

  root to: 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
