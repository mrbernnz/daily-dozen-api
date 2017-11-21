require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  def setup
    @workout = build(:workout)
  end

  test 'workout for an athlete is created' do
    assert @workout.new_record?
  end

  %W[workout_name day start finish].each do |attribute|
    test "invalid workout without #{attribute}" do
      @workout[attribute] = nil

      refute @workout.valid?
      assert_not_nil @workout.errors[attribute], "no validation error for #{attribute} of workout"
    end
  end
end
