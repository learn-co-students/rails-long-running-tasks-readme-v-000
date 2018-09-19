Rails.application.routes.draw do
  resources :customers, only: [:index]
  post 'customers/load', to: 'customers#upload'
end
