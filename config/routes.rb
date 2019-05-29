Rails.application.routes.draw do
  root 'welcome#index'
  resources :workouts
  resources :routines
  resources :exercises
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
