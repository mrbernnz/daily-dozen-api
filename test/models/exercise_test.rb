require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  def setup
    @exercise = build(:exercise)
  end

  def test_exercise_created
    assert @exercise.new_record?
  end

  def test_exercise_has_title
    assert_respond_to @exercise, :exercise_name
  end

  def test_invalid_exercise_without_title
    @exercise.exercise_name = nil

    refute @exercise.valid?
    assert_not_nil @exercise.errors[:exercise_name], 'no validation error for title of exercise'
  end
end
