ActiveAdminAuth::Application.routes.draw do
  get "home/index"

  devise_for :users

  root :to => 'home#index'

  ActiveAdmin.routes(self)
end
