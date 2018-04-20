Job.destroy_all

50.times do |index|
  Job.create!(title: Faker::Job.title,
              company: Faker::SiliconValley.company,
              post_date: Faker::Date.between(30.days.ago, Date.today),
              rating: rand(1..10),
              location: Faker::Address.city,
              url: Faker::SiliconValley.url)
end

p "Created #{Job.count} jobs"
