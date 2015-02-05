require 'test/unit'
require 'iz'

class TestCreditCard < Test::Unit::TestCase

  def valid_credit_cards
    ['4242424242424242']
  end

  def invalid_credit_cards
    [nil, false, -1, '', '    ', '424242424242']
  end

  def test_that_credit_card_values_return_true
    valid_credit_cards.each do |cc|
      assert Iz.credit_card?(cc)
    end
  end

  def test_that_invalid_credit_card_values_return_false
    invalid_credit_cards.each do |cc|
      assert !Iz.credit_card?(cc)
    end
  end
end
