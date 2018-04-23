class Step < ActiveRecord::Base
  belongs_to :job
  validates :description, :due_date, :priority, presence: true
  validates :notes, length: { in: 50..250 }

  before_save :default_status

  def default_status
    self.status = false
  end 
end
