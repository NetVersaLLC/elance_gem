#!/usr/bin/env ruby
# encoding: utf-8

module Elance
  class Freelancer < Base
    
    # GET /contractors
    def search(*params, &block)
      options = {:query => {}}
      options[:query] = params[0] if params.length > 0      
      response = self.class.get "/contractors/#{keywords.join(', ')}", options
      yield(response) if block_given?
      response
    end
    
    # GET /contractors/my
    def my(*params, &block)
      options = {:query => {}}
      options[:query] = params[0] if params.length > 0
      response = self.class.get "/contractors/my", options
      yield(response) if block_given?
      response
    end
    
    # GET /contractors/watchlist
    def watchlist(*params, &block)
      options = {:query => {}}
      options[:query] = params[0] if params.length > 0      
      response = self.class.get "/contractors/watchlist", options
      yield(response) if block_given?
      response
    end
    
    # GET /contractors/user-id
    def find(user_id, &block)
      response = self.class.get "/contractors/#{user_id}"
      yield(response) if block_given?
      response
    end
  end
end
