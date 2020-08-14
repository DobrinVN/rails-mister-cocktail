Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # GET "cocktails" to: "cocktails#index"
  # GET "cocktails/new" to: "cocktails#new", as: :new_cocktail
  # POST "cocktails" to: "cocktails#create"
  # GET "cocktails/:id" to: "cocktails#show", as: :cocktail
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
