Rails.application.routes.draw do
  resources :customers, only: [:index]
  # this route uploads the file
  post 'customers/upload', to: 'customers#upload'
end
