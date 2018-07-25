Rails.application.routes.draw do
  resources :customers, only: [:index]
  

  # For Upload Feature
  post 'customers/upload', to: 'customers#upload'

end
