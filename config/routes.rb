Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :books do
    resources :notes, only: [:create, :destroy]
  end
  
  root to: "books#index"
end
