class Employee < Account
  has_many :time_entries


  def log_time(time_entry_params)
    TimeEntry.create(time_entry_params.merge({employee:self}))
  end
end
