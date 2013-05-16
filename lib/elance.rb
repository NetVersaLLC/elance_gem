#!/usr/bin/env ruby
# encoding: utf-8

$LOAD_PATH << File.dirname(__FILE__) unless $LOAD_PATH.include?(File.dirname(__FILE__))

require 'httparty'
require "base64"
require 'uri'
require 'active_support/inflector'
require 'elance/base'
require 'elance/job'
require 'elance/freelancer'
require 'elance/group.rb'
require 'elance/profile'
require 'elance/project'
require 'elance/workroom'

module Elance
    VERSION = "0.0.1"

    def self.client(auth_code)
      Elance::Base.new(auth_code)
    end
end
