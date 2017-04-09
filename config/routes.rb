Rails.application.routes.draw do
  resources :customers, only: [:index]
  post 'customers/uploads', to: 'customers#upload'
end
