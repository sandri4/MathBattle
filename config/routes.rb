Rails.application.routes.draw do
  root 'battles#index'
  resources :battles
  # get 'battles#generate_task'
  post '/battles/:id', to: 'battles#show'
end
