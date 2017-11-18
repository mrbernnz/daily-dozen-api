athlete = Athlete.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 'password'
)

WORKOUTS = ['Chest and Biceps', 'Back and Triceps', 'Legs and Shoulders']

WORKOUTS.each do |workout|
  athlete.workouts.create(
    workout_name: workout,
    date: Faker::Date.backward(2),
    start_time: Faker::Time.between(2.hours.ago, DateTime.now),
    end_time: Faker::Time.between(5.minutes.ago, DateTime.now),
    notes: Faker::Lorem.sentence(4)
  )
end
