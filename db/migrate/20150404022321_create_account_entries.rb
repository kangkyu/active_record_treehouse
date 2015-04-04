class CreateAccountEntries < ActiveRecord::Migration
  def change
    create_table :account_entries do |t|
      t.string :type
      t.float :time
      t.integer :customer_id, :employee_id, :account_id

      t.timestamps null: false
    end
  end
end
