Rails.application.routes.draw do
  resources :politician_offices
  resources :constituent_politicians
  resources :offices
  resources :politicians
  resources :constituents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
