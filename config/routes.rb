Rails.application.routes.draw do
  resources :pharmacies do
    resources :business_hours
    resources :contact_people
  end
  resources :products
  resources :campaigns do
    member do
      post 'add_product'
    end
  end

  root to: 'pharmacies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
