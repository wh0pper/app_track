class Step < ActiveRecord::Base
  belongs_to :job
  validates :description, :due_date, :priority, presence: true
  validates :notes, length: { in: 10..250 }, allow_blank: true

  after_create :default_status

  def default_status
    self.status = false
    self.save
  end
end
