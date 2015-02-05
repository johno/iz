require 'test/unit'
require 'iz'

class TestMac < Test::Unit::TestCase

  def valid_mac_values
    ['aabbccddeeff', 'aa:bb:cc:dd:ee:ff', '11-22-33-44-55-66']
  end

  def invalid_mac_values
    [nil, false, -1, '', '1112', 'g', '10101a']
  end

  def test_that_mac_values_return_true
    valid_mac_values.each do |mac|
      puts mac.inspect
      assert Iz.mac?(mac)
    end
  end

  def test_that_invalid_mac_values_return_false
    invalid_mac_values.each do |mac|
      assert !Iz.mac?(mac)
    end
  end
end
