OccupationalHealth::Application.routes.draw do

  root 'questions#index'

  resources :questions
  resources :question_types
  resources :categories
end
