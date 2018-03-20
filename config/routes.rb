Rails.application.routes.draw do
  post 'customers/upload', to: 'customers#upload'
  resources :customers, only: [:index]
end
