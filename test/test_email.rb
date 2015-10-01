require 'test/unit'
require 'iz'

class TestHexadecimal < Test::Unit::TestCase

  def valid_emails
    ['johnotander@gmail.com', 'foo@bar.com', 'j+j@j.j']
  end

  def invalid_emails
    [nil, false, -1, '', '    ', 'g', '123g', 'foo@', '@foo']
  end

  def test_that_email_values_return_true
    valid_emails.each do |hex|
      assert Iz.email?(hex)
    end
  end

  def test_that_invalid_email_values_return_false
    invalid_emails.each do |hex|
      assert !Iz.email?(hex)
    end
  end
end
