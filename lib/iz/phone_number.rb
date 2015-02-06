module Iz
  class PhoneNumber
    REGEX = /^(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?$/

    attr_accessor :value

    def initialize(phone_number)
      self.value = phone_number
    end

    def valid?
      !!Iz::PhoneNumber.is_phone_number?(value)
    end

    def self.is_phone_number?(value)
      return false unless value
      value.to_s =~ REGEX
    end
  end
end
