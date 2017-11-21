require 'test_helper'

class ExerciseSetTest < ActiveSupport::TestCase
  def setup
    @set = build(:exercise_set)
  end

  test 'set created' do
    assert @set.new_record?
  end

  %W[number weight unit rep].each do |attribute|
    test "invalid set without #{attribute}" do
      @set[attribute] = nil

      refute @set.valid?
      assert_not_nil @set.errors[attribute], "no validation error for #{attribute} of set"
    end
  end
end
