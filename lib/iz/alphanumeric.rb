module Iz
  class Alphanumeric
    REGEX = /^[a-z0-9]+$/i

    attr_accessor :value

    def initialize(alphanumeric)
      self.value = alphanumeric
    end

    def valid?
      !!Iz::Alphanumeric.is_alphanumeric?(value)
    end

    def self.is_alphanumeric?(value)
      return false unless value
      value.to_s =~ REGEX
    end
  end
end
