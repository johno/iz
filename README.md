# iz [![Build Status](https://travis-ci.org/johnotander/iz.svg?master)](https://travis-ci.org/johnotander/iz)

All your type checking in one place. This intended to serve as simple sanity checking for
common formats: IP addresses, zip codes, credit cards, phone numbers, etc. This isn't
intended to be the authoritative source on what each of these types are. It seeks to determine
whether `'foobar'`, `'(555) 123 - 4567'`, and `nil` are phone numbers, or if `wefwef` looks
like an email.

Compatible with Ruby 1.8 - 2.2.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'iz'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install iz

## Usage

```ruby
Iz.credit_card?('123') # => false
Iz.credit_card?('4242424242424242') # => true

Iz.mac?('ababababab') # => true
Iz.mac?(-1) # => false

Iz.binary?('010101') # => true
Iz.binary?('foo') # => false

Iz.hexadecimal?(0x34) # => true
Iz.hexadecimal?('abcdef123') # => true

Iz.url?('google.com') # => false
Iz.url?('//google.com') # => true
Iz.url?('http://google.com') # => true

Iz.alphanumeric?('1234ABCD') # => true

Iz.phone_number?('1234567') # => true
```

## Upcoming support

```ruby
Iz.zip_code?('12345', :us) # => true

Iz.ip?(nil) # => false

Iz.ipv4?('192.168.0.1') # => true

Iz.ipv6?(:foo) # => false

Iz.hex_color?('#fff') # => true

Iz.rgb_color?('rgb(123, 123, 123)') # => true

Iz.hsl_color?('foobar') # => false
```

## Acknowledgements

Inspired by [is.js](https://github.com/arasatasaygin/is.js).

## Contributing

1. Fork it ( https://github.com/johnotander/iz/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
