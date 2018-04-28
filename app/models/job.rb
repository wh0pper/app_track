class Job < ActiveRecord::Base
  belongs_to :user
  has_many :steps
  validates :title, :company, :post_date, :rating, :location, :url, presence: true
  validates :rating, numericality: { only_integer: true }, :inclusion => 1..10

  after_create :add_default_steps

  scope :most_steps, -> (current_user) {(
    select("jobs.id, jobs.title, jobs.company, count(steps.id) as steps_count")
    .where(user_id: current_user.id)
    .joins(:steps)
    .group("jobs.id")
    .order("steps_count DESC")
    .limit(10)
    )}

  scope :fewest_steps, -> (current_user) {(
    select("jobs.id, jobs.title, jobs.company, count(steps.id) as steps_count")
    .where(user_id: current_user.id)
    .joins(:steps)
    .group("jobs.id")
    .order("steps_count ASC")
    .limit(10)
    )}

  scope :most_recent, -> (current_user) { order(created_at: :desc).where(user_id: current_user.id).limit(10) }

  private
    def add_default_steps
      default_steps = [
        {description: "LinkedIn Research", notes: "Notes go here (10-250 characters)...", due_date: Faker::Date.forward(10), priority: 1},
        {description: "Write Cover Letter", notes: "Notes go here (10-250 characters)...", due_date: Faker::Date.forward(14), priority: 3},
        {description: "Tailor Résumé", notes: "Notes go here (10-250 characters)...", due_date: Faker::Date.forward(14), priority: 3},
        {description: "Apply", notes: "Notes go here (10-250 characters)...", due_date: Faker::Date.forward(17), priority: 3},
        {description: "Followup", notes: "Notes go here (10-250 characters)...", due_date: Faker::Date.forward(21), priority: 2}
      ]

      default_steps.each do |step|
        self.steps.create(description: step[:description],
                    notes: step[:notes],
                    due_date: step[:due_date],
                    priority: step[:priority])
      end
    end
end
