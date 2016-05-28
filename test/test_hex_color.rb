require 'test/unit'
require 'iz'

class TestHexColor < Test::Unit::TestCase

  def valid_hex_colors
    ['#123', '#1bc', '#AB9', '#888aaa']
  end

  def invalid_hex_colors
    [nil, false, -1, '', '    ', 'g', '#1234']
  end

  def test_that_hex_color_values_return_true
    valid_hex_colors.each do |hex|
      assert Iz.hex_color?(hex)
    end
  end

  def test_that_invalid_hex_color_values_return_false
    invalid_hex_colors.each do |hex|
      assert !Iz.hex_color?(hex)
    end
  end
end
