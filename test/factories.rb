FactoryBot.define do
  factory :athlete do
    first_name 'Jon'
    last_name 'Doe'

    factory :athlete_with_workouts do
      transient do
        workouts_count 5
      end

      after(:create) do |athlete, evaluator|
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
end
