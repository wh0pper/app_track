Job.destroy_all
Step.destroy_all
User.destroy_all

def add_default_steps(job)

  default_steps = [
    {description: "LinkedIn Research", notes: "Notes go here (10-250 characters)...", due_date: Faker::Date.forward(10), priority: 1},
    {description: "Write Cover Letter", notes: "Notes go here (10-250 characters)...", due_date: Faker::Date.forward(14), priority: 3},
    {description: "Tailor Résumé", notes: "Notes go here (10-250 characters)...", due_date: Faker::Date.forward(14), priority: 3},
    {description: "Apply", notes: "Notes go here (10-250 characters)...", due_date: Faker::Date.forward(17), priority: 3},
    {description: "Followup", notes: "Notes go here (10-250 characters)...", due_date: Faker::Date.forward(21), priority: 2}
  ]

  default_steps.each do |step|
    job.steps.create!(description: step[:description],
                notes: step[:notes],
                due_date: step[:due_date],
                priority: step[:priority])
  end
end

users = [
  {email: 'user1@example.com', password: 'password'},
  {email: 'user2@example.com', password: 'password'},
  {email: 'user3@example.com', password: 'password'}
]

users.each do |user|
  new_user = User.create!(email: user[:email], password: user[:password])
  50.times do |index|
    new_job = new_user.jobs.create!(title: Faker::Job.title,
                company: Faker::SiliconValley.company,
                post_date: Faker::Date.between(30.days.ago, Date.today),
                rating: rand(1..10),
                location: Faker::Address.city,
                url: Faker::SiliconValley.url)
    add_default_steps(new_job)
  end
end



p "Created #{Job.count} jobs with #{Job.first.steps.length} default steps each"
