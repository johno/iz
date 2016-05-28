require 'iz/version'

require 'iz/alphanumeric'
require 'iz/phone_number'
require 'iz/credit_card'
require 'iz/hexadecimal'
require 'iz/hex_color'
require 'iz/hex_color'
require 'iz/binary'
require 'iz/email'
require 'iz/mac'
require 'iz/url'

module Iz
  def self.credit_card?(cc)
    !!Iz::CreditCard.is_credit_card?(cc)
  end

  def self.hexadecimal?(hexadecimal)
    !!Iz::Hexadecimal.is_hexadecimal?(hexadecimal)
  end

  def self.hex_color?(hex_color)
    !!Iz::HexColor.is_hex_color?(hex_color)
  end

  def self.email?(email)
    !!Iz::Email.is_email?(email)
  end

  def self.binary?(binary)
    !!Iz::Binary.is_binary?(binary)
  end

  def self.mac?(mac)
    !!Iz::Mac.is_mac?(mac)
  end

  def self.url?(url)
    !!Iz::Url.is_url?(url)
  end

  def self.alphanumeric?(alpha)
    !!Iz::Alphanumeric.is_alphanumeric?(alpha)
  end

  def self.phone_number?(phone_number)
    !!Iz::PhoneNumber.is_phone_number?(phone_number)
  end
end
