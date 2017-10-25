require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  def setup
    @exercise = build(:exercise)
    puts @exercise
  end

  test 'a valid exercise' do
    assert_equal @exercise.exercise_name, 'Bench Press'
  end
end
