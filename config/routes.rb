Rails.application.routes.draw do
  get :roles, to: 'home#roles'
  root to: 'home#index'
end
