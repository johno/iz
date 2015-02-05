module Iz
  class Hexadecimal
    REGEX = /^[0-9a-f]+$/i

    attr_accessor :value

    def initialize(hexadecimal)
      self.value = hexadecimal
    end

    def valid?
      Iz::Hexadecimal.is_hexadecimal?(value)
    end

    def self.is_hexadecimal?(value)
      value.to_s =~ REGEX
    end
  end
end
