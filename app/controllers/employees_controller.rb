class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def create
    employee = Employee.create(params.require(:employee).permit(:name))
    redirect_to employee
  end
end
