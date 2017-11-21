require 'test_helper'

class AthleteTest < ActiveSupport::TestCase
  def setup
    @athlete = build(:athlete)
  end

  test 'valid athlete' do
    assert @athlete.valid?
  end

  # Validattions
  %W[first_name last_name email password_digest].each do |attribute|
    test "invalid without #{attribute}" do
      @athlete[attribute] = nil

      refute @athlete.valid?, "saved athlete without #{attribute}"
      assert_not_nil @athlete.errors[attribute], "no validation error for #{attribute}"
    end
  end
end
