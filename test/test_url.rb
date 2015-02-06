require 'test/unit'
require 'iz'

class TestUrl < Test::Unit::TestCase

  def valid_urls
    ['http://google.com', 'https://google.com', 'http://www.foo.bar', 'https://foo.io', '//google.com.uk']
  end

  def invalid_urls
    [nil, false, -1, '', '1112', 'g', '10101a', 'http://google', 'https://google', 'www.google']
  end

  def test_that_urls_return_true
    valid_urls.each do |url|
      assert Iz.url?(url)
    end
  end

  def test_that_invalid_urls_return_false
    invalid_urls.each do |url|
      assert !Iz.url?(url)
    end
  end
end
