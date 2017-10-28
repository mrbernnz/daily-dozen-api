require 'test_helper'

class AthleteTest < ActiveSupport::TestCase
  def setup
    @athlete = create(:athlete)
  end

  test 'valid user' do
    assert @athlete.valid?
  end

  test 'an athlete has workouts' do
    workouts = create(:athlete_with_workouts).workouts.length
    assert_equal workouts, 5
  end

  test 'invalid without name' do
    @athlete.first_name = nil
    @athlete.last_name = nil

    refute_nil @athlete.valid?
    assert_not_nil @athlete.errors[:first_name]
    assert_not_nil @athlete.errors[:last_name]
  end
end
