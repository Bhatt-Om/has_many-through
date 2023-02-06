class PatientsController < ApplicationController

  before_action :find_patient_id, only: [:edit, :update, :show, :destroy]

  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new 
  end

  def create
    @patient = Patient.create(patient_params)
    redirect_to 
  end

  def edit
  end

  def update
    @patient.update(patient_params)
    redirect_to 
  end

  def destroy
    @patient.destroy
    redirect_to  
  end

  private

  def find_patient_id 
    @patient = Patient.find(params[:id])
  end

  def patient_params 
    params.require(:patient).permit(:name)
  end

end
