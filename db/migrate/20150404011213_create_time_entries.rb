class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.float :time
      t.integer :customer_id, :employee_id
      
      t.timestamps null: false
    end
  end
end
