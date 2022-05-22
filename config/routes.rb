Rails.application.routes.draw do
  
  resources :crewmates, only: [:index, :create, :destroy]

  root to: "crewmates#index"
end
