class DoctorsController < ApplicationController

  before_action :find_doctor_id, only: [:edit, :update, :show, :destroy]

  def index
    @doctors = Doctor.all 
  end

  def show
  end

  def new
    @doctor = Doctor.new 
  end

  def create
    @doctor = Doctor.new(doctor_params)
    @doctor.save 
  end

  def edit
  end

  def update
    @doctor.update(doctor_params)
    redirect_to 
  end

  def destroy
    @doctor.destroy
    redirect_to 

  end

  private 

  def find_doctor_id 
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name)
  end
end