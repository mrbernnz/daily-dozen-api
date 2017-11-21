require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  def setup
    @exercise = build(:exercise)
  end

  test 'exercise created' do
    assert @exercise.new_record?
  end

  test 'invalid exercise without title' do
    @exercise.exercise_name = nil

    refute @exercise.valid?
    assert_not_nil @exercise.errors[:exercise_name], 'no validation error for title of exercise'
  end
end
