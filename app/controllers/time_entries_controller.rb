class TimeEntriesController < ApplicationController
  def create
    employee = Employee.find(params[:employee_id])
    employee.log_time(params.require(:time_entry).permit(:customer_id, :time))
    redirect_to employee
    # @customer = Customer.find(params[:time_entry][:customer_id])
    # redirect_to @customer

    # "time_entry"=>{"customer_id"=>"3",
    # "time"=>"2"},
  end
end
