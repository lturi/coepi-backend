Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   resources :client, :client_bluetooth_device, :case, :case_bluetooth_device, :exposure, :subscription
   
end
