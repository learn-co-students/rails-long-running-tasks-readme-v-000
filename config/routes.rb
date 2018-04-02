Rails.application.routes.draw do
  resources :customers, only: [:index]
  # a route to take the file upload
  post 'customers/upload', to: 'customers#upload'
end
