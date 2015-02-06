module Iz
  class Binary
    REGEX = /^[01]+$/

    attr_accessor :value

    def initialize(binary)
      self.value = binary
    end

    def valid?
      !!Iz::Binary.is_binary?(value)
    end

    def self.is_binary?(value)
      return false unless value
      value.to_s =~ REGEX
    end
  end
end
