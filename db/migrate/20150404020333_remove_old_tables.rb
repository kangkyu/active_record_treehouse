class RemoveOldTables < ActiveRecord::Migration
  def up
    Customer.all.each do |customer|
      Account.create!(type: 'Customer', name: customer.name, email: customer.email, about: customer.about)
    end
    Employee.all.each do |employee|
      Account.create!(type: 'Employee', name: employee.name, email: employee.email, about: employee.about)
    end

    drop_table :customers
    drop_table :employees
  end
end
