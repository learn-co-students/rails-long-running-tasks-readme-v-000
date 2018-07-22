# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

resources :customers, only: [:index]
post 'customers/upload', to: 'customers#upload'