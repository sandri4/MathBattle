Rails.application.routes.draw do
  root 'players#index'
  resources :players
  resources :battles
  # get 'battles#generate_task'
  post '/battles/:id', to: 'battles#show'
end
