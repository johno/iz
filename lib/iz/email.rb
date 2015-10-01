module Iz
  class Email
    REGEX = /.+@.+/

    attr_accessor :value

    def initialize(email)
      self.value = email
    end

    def valid?
      !!Iz::Email.is_email?(value)
    end

    def self.is_email?(value)
      value.to_s =~ REGEX
    end
  end
end
