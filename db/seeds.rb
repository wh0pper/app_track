Job.destroy_all
Step.destroy_all

def add_default_steps(job)

  default_steps = [
    {description: "LinkedIn Research", notes: "Notes...", due_date: Faker::Date.forward(10), priority: 1},
    {description: "Write Cover Letter", notes: "Notes...", due_date: Faker::Date.forward(14), priority: 3},
    {description: "Tailor Résumé", notes: "Notes...", due_date: Faker::Date.forward(14), priority: 3},
    {description: "Apply", notes: "Notes...", due_date: Faker::Date.forward(17), priority: 3},
    {description: "Followup", notes: "Notes...", due_date: Faker::Date.forward(21), priority: 2}
  ]

  default_steps.each do |step|
    job.steps.create(description: step[:description],
                notes: step[:notes],
                due_date: step[:due_date],
                priority: step[:priority])
  end
end


50.times do |index|
  new_job = Job.create!(title: Faker::Job.title,
              company: Faker::SiliconValley.company,
              post_date: Faker::Date.between(30.days.ago, Date.today),
              rating: rand(1..10),
              location: Faker::Address.city,
              url: Faker::SiliconValley.url)
  add_default_steps(new_job)
end



p "Created #{Job.count} jobs with 5 default steps"
