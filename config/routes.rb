Rails.application.routes.draw do
  
  get 'reservations/index'
  get 'rooms/index'
  get '/' => "home#top"
  post 'reservations/:id' => 'reservations#confirm', as: :confirm_reservation
  get 'home/account' => 'home#account', as: :account_home
  get 'home/profile' => 'home#profile', as: :profile_home
  post 'home/profile' => 'home#update', as: :update_home
  get 'home/area_serch' => 'home#area_serch', as: :area_serch_room
  get 'home/key_serch' => 'home#key_serch', as: :key_serch_room
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rooms
  resources :reservations
  devise_for :users
end
