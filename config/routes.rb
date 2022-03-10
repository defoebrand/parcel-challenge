Rails.application.routes.draw do
  root 'parcel_machines#index'
  resources :parcel_machines, only: :show
end
