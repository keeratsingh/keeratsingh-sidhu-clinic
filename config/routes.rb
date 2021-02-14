Rails.application.routes.draw do
  resources :prescriptions
  root 'patients#index'
  resources :patients do
    get "new_prescription"
  end
end
