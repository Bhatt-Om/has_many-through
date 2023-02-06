class AppointmentsController < ApplicationController

  before_action :find_appoinment_id , only: [:edit, :update, :show, :destory]

  def index
    @appointments = Appointment.all 
  end

  def show
  end

  def new
    @appointment = Appointment.new 
  end

  def create
    @appointment = Appointment.create(appointment_params)
    redirect_to appointments_path
  end

  def edit
  end

  def update
    @appointment.update(appointment_params)
  end

  def destroy
    @appointment.destory
  end

  private

  def find_appoinment_id
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params 
    params.require(:appointment).permit(:doctor_id, :patient_id, :appointment_date)
  end
end