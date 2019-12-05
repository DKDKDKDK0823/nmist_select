Rails.application.routes.draw do
  devise_for :admins
  get "/" => "home#top"
  resources :wears
  resources :types
  resources :sizes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
