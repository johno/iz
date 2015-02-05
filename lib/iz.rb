require 'iz/version'

require 'iz/credit_card'
require 'iz/hexadecimal'

module Iz
  def self.credit_card?(cc)
    Iz::CreditCard.is_credit_card?(cc)
  end

  def self.hexadecimal?(hexadecimal)
    Iz::Hexadecimal.is_hexadecimal?(hexadecimal)
  end
end
