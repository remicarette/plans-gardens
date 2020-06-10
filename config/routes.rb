Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :gardens, only: [:show] do
    resources :plants, only: :create # /gardens/:garden_id/plants
  end

  resources :plants, only: [:destroy]
end
