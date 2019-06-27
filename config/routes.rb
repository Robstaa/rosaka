Rails.application.routes.draw do
  resources :business_hours
  resources :contact_people
  resources :pharmacies

  root to: 'pharmacies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
