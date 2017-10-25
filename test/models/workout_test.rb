require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  def setup
    @workout = build(:workout)
  end

  test 'workout created' do
    assert @workout.new_record?
  end

  test 'a valid workout' do
    assert_equal @workout.workout_name, 'Chest and Biceps'
    assert_equal @workout.notes, 'Great workout today!'
  end
end
