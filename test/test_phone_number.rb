require 'test/unit'
require 'iz'

class TestPhoneNumber < Test::Unit::TestCase

  def valid_phone_numbers
    ['(123) 456-7890', '11234567890', '1 123 456 7890', '123-456-7890']
  end

  def invalid_phone_numbers
    [nil, false, -1, '123456']
  end

  def test_that_phone_numbers_return_true
    valid_phone_numbers.each do |phone_number|
      assert Iz.phone_number?(phone_number)
    end
  end

  def test_that_invalid_phone_numbers_return_false
    invalid_phone_numbers.each do |phone_number|
      assert !Iz.phone_number?(phone_number)
    end
  end
end
