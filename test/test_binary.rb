require 'test/unit'
require 'iz'

class TestBinary < Test::Unit::TestCase

  def valid_binary_values
    ['0', '1', '1111', '0000000', '1010111100101']
  end

  def invalid_binary_values
    [nil, false, -1, '', '1112', 'g', '10101a']
  end

  def test_that_binary_values_return_true
    valid_binary_values.each do |hex|
      assert Iz.binary?(hex)
    end
  end

  def test_that_invalid_binary_values_return_false
    invalid_binary_values.each do |hex|
      assert !Iz.binary?(hex)
    end
  end
end
