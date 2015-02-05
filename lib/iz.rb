require 'iz/version'

require 'iz/credit_card'
require 'iz/hexadecimal'
require 'iz/binary'
require 'iz/mac'

module Iz
  def self.credit_card?(cc)
    Iz::CreditCard.is_credit_card?(cc)
  end

  def self.hexadecimal?(hexadecimal)
    Iz::Hexadecimal.is_hexadecimal?(hexadecimal)
  end

  def self.binary?(binary)
    Iz::Binary.is_binary?(binary)
  end

  def self.mac?(mac)
    Iz::Mac.is_mac?(mac)
  end
end
