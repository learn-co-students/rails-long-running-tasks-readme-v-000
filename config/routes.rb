Rails.application.routes.draw do
  resources :customers, only: [:index]
  post 'customer/upload', to: 'customers#upload'
end
