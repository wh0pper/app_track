class Step < ActiveRecord::Base
  belongs_to :job
  validates :description, :due_date, :priority, presence: true
end
