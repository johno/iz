module Iz
  class Mac
    REGEX = /^(([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2}))|([0-9A-Fa-f]{12})$/

    attr_accessor :value

    def initialize(mac)
      self.value = mac
    end

    def valid?
      Iz::Mac.is_mac?(value)
    end

    def self.is_mac?(value)
      value.to_s =~ REGEX
    end
  end
end
