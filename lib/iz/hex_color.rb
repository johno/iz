module Iz
  class HexColor
    REGEX = /^([0-9a-f]{3}|[0-9a-f]{6})$/i

    attr_accessor :value

    def initialize(hex_color)
      self.value = hex_color
    end

    def valid?
      !!Iz::HexColor.is_hex_color?(value)
    end

    def self.is_hex_color?(value)
      val = value.to_s
      return false unless val[0] == '#'

      val[0] = ''
      val =~ REGEX
    end
  end
end
