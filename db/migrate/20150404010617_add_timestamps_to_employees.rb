class AddTimestampsToEmployees < ActiveRecord::Migration
  def change
    add_timestamps :employees, null: false
  end
end
