Rails.application.routes.draw do
  # as a student I can see my timetable
  root to: "time_slots#index"
  devise_for :users


  # as a student I can see my lesson
  # as a teacher I can see my class
  # as a teacher I can update classes
  resources :lessons, only: [:show, :edit, :update, :index]

  # as a student I can choose my flextable
  resources :time_slots, only: [:new, :create, :edit, :update]
  # as a teacher I can see my timeable

  # devise_scope :user do
  #   authenticated :user do
  #     root 'time_slots#index', as: :authenticated_root
  #   end
  #   unauthenticated do
  #     root 'devise/sessions#new', as: :unauthenticated_root
  #   end
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
