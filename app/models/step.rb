class Step < ActiveRecord::Base
  belongs_to :job
  validates :description, :due_date, :priority, presence: true
  validates :notes, length: { in: 50..250 }
end
