Rails.application.routes.draw do
  
  get 'reservations/index'
  get 'rooms/index'
  get '/' => "home#top"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rooms
  resources :reservations
  
end
