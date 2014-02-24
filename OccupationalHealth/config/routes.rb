OccupationalHealth::Application.routes.draw do

  resources :project_profiles

  root 'home#index'

  resources :questions
  resources :question_types
  resources :categories
end
