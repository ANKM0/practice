Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'
  resources :post_images, only: %i[new create index show destroy] do
    resources :post_comments, only: %i[create destroy]
    resource :favorites, only: %i[create destroy]
  end

  resources :users, only: %i[show edit update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
