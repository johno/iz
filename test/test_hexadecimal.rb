require 'test/unit'
require 'iz'

class TestHexadecimal < Test::Unit::TestCase

  def valid_hexadecimals
    ['123', '1bc', 'AB99', '8098098AbCdEf']
  end

  def invalid_hexadecimals
    [nil, false, -1, '', '    ', 'g', '123g']
  end

  def test_that_credit_card_values_return_true
    valid_hexadecimals.each do |hex|
      assert Iz.hexadecimal?(hex)
    end
  end

  def test_that_invalid_credit_card_values_return_false
    invalid_hexadecimals.each do |hex|
      assert !Iz.hexadecimal?(hex)
    end
  end
end
