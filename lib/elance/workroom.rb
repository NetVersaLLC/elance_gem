#!/usr/bin/env ruby
# encoding: utf-8

require 'awesome_print'

module Elance
  class Workroom < Base

    # GET /workroom/bid-id
    def find(bid_id, &block)
      response = self.class.get "/workroom/#{bid_id}", options
      yield(response) if block_given?
      response
    end

    # GET /workroom/bid-id/actions
    def proposals(bid_id, &block)
      response = self.class.get "/workroom/#{bid_id}/actions", options
      yield(response) if block_given?
      response
    end

    # GET /workroom/bid-id/contractors
    def contractors(bid_id, &block)
      response = self.class.get "/workroom/#{bid_id}/contractors", options
      yield(response) if block_given?
      response
    end

    # GET /workroom/bid-id/inbox
    def inbox(bid_id, *params, &block)
      options = {:query => {}}
      options[:query] = params[0] if params.length > 0    
      response = self.class.get "/workroom/#{bid_id}/inbox", options
      yield(response) if block_given?
      response
    end

    # GET/POST /workroom/bid-id/messages
    def messages(bid_id, &block)
      response = self.class.get "/workroom/#{bid_id}/messages", options
      yield(response) if block_given?
      response
    end

    # GET /workroom/bid-id/proposal
    def proposal(bid_id, &block)
      response = self.class.get "/workroom/#{bid_id}/proposal", options
      yield(response) if block_given?
      response
    end

    # GET /workroom/bid-id/statusreports
    def status_reports(bid_id, &block)
      response = self.class.get "/workroom/#{bid_id}/statusReports", options
      yield(response) if block_given?
      response
    end

    # GET /workroom/bid-id/timesheets
    def timesheets(bid_id, &block)
      response = self.class.get "/workroom/#{bid_id}/timesheets", options
      yield(response) if block_given?
      response
    end

    # GET /workroom/bid-id/users
    def users(bid_id, &block)
      response = self.class.get "/workroom/#{bid_id}/users", options
      yield(response) if block_given?
      response
    end

    # GET /workroom/bid-id/workview/user-id
    def workview(bid_id, user_id, &block)
      response = self.class.get "/workroom/#{bid_id}/workview/#{user_id}", options
      yield(response) if block_given?
      response
    end
  end
end
