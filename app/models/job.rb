class Job < ActiveRecord::Base
  has_many :steps
  validates :title, :company, :post_date, :rating, :location, :url, presence: true

  scope :most_steps, -> {(
    select("jobs.id, jobs.title, count(steps.id) as steps_count")
    .joins(:steps)
    .group("jobs.id")
    .order("steps_count DESC")
    .limit(10)
    )}
end
