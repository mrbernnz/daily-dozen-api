require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  def setup
    @workout = build(:workout)
  end

  test 'workout created' do
    assert @workout.new_record?
  end
end
