require 'test/unit'
require 'iz'

class TestAlphanumeric < Test::Unit::TestCase

  def valid_alphanumeric_values
    ['abc123', 'ABC123', '123', 'A', :foo]
  end

  def invalid_alphanumeric_values
    [nil, false, -1, '', 'http://google', 'https://google', 'www.google', 'foo!']
  end

  def test_that_alphanumeric_values_return_true
    valid_alphanumeric_values.each do |alphanumeric|
      assert Iz.alphanumeric?(alphanumeric)
    end
  end

  def test_that_invalid_alphanumeric_values_return_false
    invalid_alphanumeric_values.each do |alphanumeric|
      assert !Iz.alphanumeric?(alphanumeric)
    end
  end
end
