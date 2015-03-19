Rails.application.routes.draw do
  resources :users do
    resources :photos
  end

  resources :sessions, :only => [:new, :create, :destroy]

end
