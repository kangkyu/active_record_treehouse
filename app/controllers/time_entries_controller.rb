class TimeEntriesController < ApplicationController
  def create
    employee = Employee.find(params[:employee_id])
    @time_entry = employee.time_entries.create(params.require(:time_entry).permit(:customer_id, :time))
    @customer = Customer.find(params[:time_entry][:customer_id])
    redirect_to employee
    # redirect_to @customer

    # "time_entry"=>{"customer_id"=>"3",
    # "time"=>"2"},
  end
end
