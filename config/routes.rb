Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
    root to: 'cocktails#index'
    resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
      resources :doses, only: [:create, :new]
      resources :reviews, only: [:new, :create]
  end
end
