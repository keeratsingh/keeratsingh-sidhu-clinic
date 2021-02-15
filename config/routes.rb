Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'patients#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  resources :patients do
    resources :prescriptions, :only => [:new, :edit, :create, :update, :destroy]
  end
end
