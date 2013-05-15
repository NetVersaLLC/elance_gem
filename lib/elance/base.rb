#!/usr/bin/env ruby
# encoding: utf-8

module Elance
  class Base
    include HTTParty
    base_uri "http://api.elance.com/api2"
    # debug_output $stderr

    def initialize(access_token)
      @access_token = access_token
      self.class.default_params :access_token => @access_token
    end

    def method_missing(param)
      "Elance::#{param.to_s.classify}".constantize.new(@access_token)
    end
  end
end
