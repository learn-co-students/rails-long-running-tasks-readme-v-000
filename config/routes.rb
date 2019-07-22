Rails.application.routes.draw do
  resources :customers, only: [:index]
  post 'costomers/upload', to:'customers#upload'
end
