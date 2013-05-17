#!/usr/bin/env ruby
# encoding: utf-8

module Elance
  class Profile < Base
    
    # GET /profiles/my
    def profile(&block)
      response = self.class.get "/profiles/my"
      yield(response) if block_given?
      response
    end
    
    # GET /profiles/my/icon
    def profile_icon(&block)
      response = self.class.get "/profiles/my/icon"
      yield(response) if block_given?
      response
    end  
    
    # GET profiles/name-or-id
    def name_id(name_or_id, &block)
      response = self.class.get "/profiles/#{name_or_id}"
      yield(response) if block_given?
      response
    end
    
    # GET profiles/name-or-id/icon
    def name_id_icon(name_or_id, &block)
      response = self.class.get "/profiles/#{name_or_id}/icon"
      yield(response) if block_given?
      response
    end
  end
end
    
    