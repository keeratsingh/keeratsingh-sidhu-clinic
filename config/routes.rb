Rails.application.routes.draw do
  root 'patients#index'
  resources :patients do
    resources :prescriptions, :only => [:new, :edit, :create, :update, :destroy]
  end
end
