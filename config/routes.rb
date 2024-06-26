require 'sidekiq/web'

Rails.application.routes.draw do
  # Devise routes for user authentication
  devise_for :users
  
  # Restrict Sidekiq web interface to admin users
  authenticate :user, -> (user) { user.admin? } do
    mount Sidekiq::Web => "/sidekiq"
  end
end