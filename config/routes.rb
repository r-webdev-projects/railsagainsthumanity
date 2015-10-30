Rails.application.routes.draw do

  # resources :turns
  # resources :players

  post '/', to: 'turns#test', as: 'root'

end
