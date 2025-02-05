Rails.application.routes.draw do
  get "up" => "rails/health#show", :as => :rails_health_check

  resource :registration, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  root "home#index"
end
