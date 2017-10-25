athlete = Athlete.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: 'password'
)

WORKOUTS = ['Chest and Biceps', 'Back and Triceps', 'Legs and Shoulders']
EXERCISES = ['INCLINE DUMBBELL PRESS', 'INCLINE DUMBBELL FLY', 'DUMBBELL BENCH PRESS', 'CABLE FLY INTO CABLE PRESS', 'DECLINE PUSH-UP', 'ALTERNATING DUMBBELL CURL  INTO DUMBBELL CURL', 'STANDING DOUBLE BICEPS CABLE CURL', 'REVERSE CURL']

WORKOUTS.each do |workout|
  athlete.workouts.create(
    workout_name: workout,
    date: Faker::Date.backward(2),
    start_time: Faker::Time.between(2.hours.ago, DateTime.now),
    end_time: Faker::Time.between(5.minutes.ago, DateTime.now),
    notes: Faker::Lorem.sentence(4)
  )
end

EXERCISES.each do |name|
  Workout.find_each do |workout|
    workout.exercises.create(
      exercise_name: name
    )
  end

  Exercise.find_each do |exercise|
    exercise.exercise_sets.create(
      number: 1,
      weight: 135,
      unit: 'lb',
      rep: 1
    )
  end
end
