class TimeEntry < AccountEntry
  belongs_to :customer
  belongs_to :employee

  def cost
    time * 30
  end
end
