Rails.application.routes.draw do
  resources :stocks
  
  root 'stocks#index'
end
