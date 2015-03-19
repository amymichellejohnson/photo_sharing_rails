Rails.application.routes.draw do
  root :to =>'users#index'

  resources :users do
    resources :photos
  end

  resources :taggings

  resources :sessions, :only => [:new, :create, :destroy]

end
