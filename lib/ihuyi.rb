require "ihuyi/version"
require "ihuyi/sms"

module Ihuyi
  class << self
    attr_accessor :account, :password
  end
end
