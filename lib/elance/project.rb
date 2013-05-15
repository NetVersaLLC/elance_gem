#!/usr/bin/env ruby
# encoding: utf-8

require 'awesome_print'

module Elance
  class Project < Base

    # POST /projects/jobs
    def create(*params, &block)
      options = {:query => {}}
      options[:query] = params[0] if params.length > 0
      response = self.class.post '/projects/jobs', options
      yield(response) if block_given?
      response
    end

    # POST /projects/payments
    def payment(*params, &block)
      options = {:query => {}}
      options[:query] = params[0] if params.length > 0
      response = self.class.post '/projects/jobs', options
      yield(response) if block_given?
      response
    end
  end
end
