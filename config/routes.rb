Rails.application.routes.draw do
  devise_for :users

  get "timeslots", to: "timeslots#index"
  get "lessons/:id", to: "lessons#show", as: :lesson
  get "lessons", to: "lessons#index"

  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
