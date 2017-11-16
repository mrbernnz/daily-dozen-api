require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  def setup
    @exercise = build(:exercise)
  end

  test 'exercise created' do
    assert @exercise.new_record?
  end

  test 'a presence of a exercise title' do
    assert_equal @exercise.exercise_name, 'Bench Press'
  end
end
