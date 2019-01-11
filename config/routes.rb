Rails.application.routes.draw do
  resources :customers, only: [:index]
  post :customers, to: 'customers#upload'
end
