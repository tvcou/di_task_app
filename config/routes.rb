Rails.application.routes.draw do
  resources :blocks do
    resources :tasks, only: [:create, :destroy]
  end
  root 'blocks#index'
end
