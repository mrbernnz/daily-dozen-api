require 'test_helper'

class AthleteTest < ActiveSupport::TestCase
  def setup
    @athlete = build(:athlete)
  end

  def test_valid_athlete
    assert @athlete.valid?
  end

  %W[first_name last_name email password_digest].each do |attribute|
    test "invalid without #{attribute}" do
      @athlete[attribute] = nil

      refute @athlete.valid?, "saved athlete without #{attribute}"
      assert_not_nil @athlete.errors[attribute], "no validation error for #{attribute}"
    end
  end
end
