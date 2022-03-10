class ParcelMachinesController < ApplicationController
  def index
    @parcel_machines = ParcelMachine.all
  end
  
  def show
    @parcel_machine = ParcelMachine.find(params[:id])
  end
  
  def export_all
    @parcel_machines = ParcelMachine.all

    respond_to do |format|
      format.xlsx
    end
  end
  
  def export_single
    @parcel_machines = ParcelMachine.where(id: params[:id])

    respond_to do |format|
      format.xlsx
    end
  end
end
