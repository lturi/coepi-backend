Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   resources :client, :client_bluetooth_device, :case, :case_bluetooth_device, :exposure, :subscription


  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :client, only: [:index]
    end
  end   
end
