FactoryBot.define do
  factory :athlete do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    email Faker::Internet.email
    password Faker::Internet.password
    token Faker::Crypto.sha1
  end

  factory :workout do
    workout_name 'Chest and Biceps'
    day 1.day.ago
    start 2.hours.ago
    finish 10.minutes.ago
    notes Faker::Lorem.sentence
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
