class ParcelMachinesController < ApplicationController
  def index
    @parcel_machines = ParcelMachine.all
  end
  
  def show
    @parcel_machine = ParcelMachine.find(params[:id])
  end
end
