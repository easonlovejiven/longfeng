Rails.application.routes.draw do
  namespace :admin do
    namespace :manage do
      resources :editors
      resources :roles
      resources :permissions
      resources :role_permissions
    end
  end
end

