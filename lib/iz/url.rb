module Iz
  class Url
    REGEX = /^(?:\w+:)?\/\/([^\s\.]+\.\S{2}|localhost[\:?\d]*)\S*$/i

    attr_accessor :value

    def initialize(url)
      self.value = url
    end

    def valid?
      !!Iz::Url.is_url?(value)
    end

    def self.is_url?(value)
      return false unless value
      value.to_s =~ REGEX
    end
  end
end
