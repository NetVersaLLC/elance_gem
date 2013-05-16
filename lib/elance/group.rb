#!/usr/bin/env ruby
# encoding: utf-8

module Elance
  class Group < Base

    # GET /groups
    def all(&block)
      response = self.class.get "/groups"
      yield(response) if block_given?
      response
    end

    # GET /groups/group_id
    def find(group_id)
      response = self.class.get "/groups/#{group_id}"
      yield(response) if block_given?
      response
    end

    # GET /groups/group_id
    def members(group_id)
      response = self.class.get "/groups/#{group_id}/members"
      yield(response) if block_given?
      response
    end

    # GET /groups/group_id
    def jobs(group_id)
      response = self.class.get "/groups/#{group_id}/jobs"
      yield(response) if block_given?
      response
    end
  end
end
