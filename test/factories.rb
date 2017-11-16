FactoryBot.define do
  factory :athlete do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    email Faker::Internet.email
    password Faker::Internet.password
    token Faker::Crypto.sha1

    factory :athlete_with_workouts do
      transient do
        workouts_count 5
      end

      after(:build) do |athlete, evaluator|
        create_list(:workout, evaluator.workouts_count, athlete: athlete)
      end
    end
  end

  factory :workout do
    workout_name 'Chest and Biceps'
    date 1.day.ago
    start_time 2.hours.ago
    end_time 10.minutes.ago
    notes 'Great workout today!'
    athlete
  end

  factory :exercise do
    exercise_name 'Bench Press'
  end

  factory :exercise_set do
    number 1
    weight 135
    unit 'lb'
    rep 1
  end
end
