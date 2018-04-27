class Job < ActiveRecord::Base
  belongs_to :user
  has_many :steps
  validates :title, :company, :post_date, :rating, :location, :url, presence: true
  validates :rating, numericality: { only_integer: true }, :inclusion => 1..10

  scope :most_steps, -> {(
    select("jobs.id, jobs.title, count(steps.id) as steps_count")
    .joins(:steps)
    .group("jobs.id")
    .order("steps_count DESC")
    .limit(10)
    )}

  scope :fewest_steps, -> {(
    select("jobs.id, jobs.title, count(steps.id) as steps_count")
    .joins(:steps)
    .group("jobs.id")
    .order("steps_count ASC")
    .limit(10)
    )}

  scope :most_recent, -> { order(created_at: :desc).limit(10) }
end
