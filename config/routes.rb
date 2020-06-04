Rails.application.routes.draw do
  # as a student I can see my timetable
  devise_for :users
  root to: "time_slots#index"
  # as a student I can see my lesson
  # as a teacher I can see my class
  # as a teacher I can update classes
  resources :lessons, only: [:show, :edit, :update, :index]
  # as a student I can choose my flextable
  resources :time_slots, only: [:index, :new, :create]
  # as a teacher I can see my timeable

end
