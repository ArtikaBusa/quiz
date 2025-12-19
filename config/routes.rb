Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  resources :quizzes, only: [:index, :show]
  root "quizzes#index"
end
