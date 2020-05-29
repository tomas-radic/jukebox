Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "admin/artists#index"

  namespace :admin do
    resources :countries
    resources :artists
    resources :albums
  end
end
