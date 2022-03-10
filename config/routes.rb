Rails.application.routes.draw do
  resources :parcel_machines, only: :show
  root 'parcel_machines#index'
end
