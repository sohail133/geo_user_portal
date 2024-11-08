Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  namespace :api do
    namespace :admin_portal do
      namespace :v1 do
        resources :users, only: [:index]
        resources :continents, only: [:index]
        resources :countries, only: [:index]
        resources :states, only: [:index]
        resources :cities, only: [:index]
      end
    end
  end  
end