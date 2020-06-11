Rails.application.routes.draw do
  # as a student I can see my timetable
  devise_for :users
  root to: "time_slots#index"
  # as a student I can see my lesson
  # as a teacher I can see my class
  # as a teacher I can update classes
  resources :lessons, only: [:show, :edit, :update, :index]
  # as a student I can choose my flextable
  resources :time_slots, only: [:index, :create, :destroy]
  get "time_slots/new/:weekly_period", to: "time_slots#new"
  # as a teacher I can see my timeable
  get "/impressum", to: "pages#impressum", as: :impressum
  get "/about", to: "pages#about", as: :about
end
