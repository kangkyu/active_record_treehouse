class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def create
    @employee = Employee.new(params.require(:employee).permit(:name))
    @employee.save
    redirect_to employees_url
  end
end
