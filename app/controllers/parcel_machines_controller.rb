class ParcelMachinesController < ApplicationController
  def index
    params_q = params[:format] == 'xlsx' ? JSON.parse(params[:q]) : params[:q]
    @q = ParcelMachine.ransack(params_q)
    @parcel_machines = @q.result

    respond_to do |format|
      format.html
      format.xlsx
    end
  end
  
  def show
    @parcel_machine = ParcelMachine.where(id: params[:id])

    respond_to do |format|
      format.html
      format.xlsx
    end
  end
end
