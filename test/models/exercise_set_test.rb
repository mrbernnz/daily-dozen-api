require 'test_helper'

class ExerciseSetTest < ActiveSupport::TestCase
  def setup
    @set = build(:exercise_set)
  end

  test 'set created' do
    assert @set.new_record?
  end

  test 'a valid set' do
    assert_equal @set.number, 1
    assert_equal @set.weight, 135
    assert_equal @set.unit, 'lb'
    assert_equal @set.rep, 1
  end
end
