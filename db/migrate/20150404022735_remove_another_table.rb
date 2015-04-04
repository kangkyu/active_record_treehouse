class RemoveAnotherTable < ActiveRecord::Migration
  def up
    TimeEntry.all.each do |entry|
      AccountEntry.create(time: entry.time, customer_id: entry.customer_id, employee_id: entry.employee_id)
    end

    drop_table :time_entries
  end
end
