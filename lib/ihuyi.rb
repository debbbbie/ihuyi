require "ihuyi/version"
require "ihuyi/sms"

module Ihuyi
  class << self
    attr_accessor :account_sid, :auth_token, :app_id, :env
  end
end
