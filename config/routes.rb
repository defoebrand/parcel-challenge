Rails.application.routes.draw do
  root 'parcel_machines#index'
  resources :parcel_machines, only: :show
  get '/export_single/:id', to: 'parcel_machines#export_single', as: 'export_single'
end
