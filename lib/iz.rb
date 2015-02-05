require 'iz/version'

require 'iz/credit_card'
require 'iz/hexadecimal'
require 'iz/binary'

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
end
