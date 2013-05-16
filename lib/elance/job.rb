#!/usr/bin/env ruby
# encoding: utf-8

module Elance
  class Job < Base

    # GET /jobs
    def all(*params, &block)
      options = {:query => {}}
      options[:query] = params[0] if params.length > 0
      response = self.class.get '/jobs', options
      yield(response) if block_given?
      response
    end

    # GET /jobs/my
    def my(*params, &block)
      options = {:query => {}}
      options[:query] = params[0] if params.length > 0
      response = self.class.get '/jobs/my', options
      yield(response) if block_given?
      response
    end

    # GET /job/job-id
    def find(job_id, &block)
      response = self.class.get "/jobs/#{job_id}", options
      yield(response) if block_given?
      response
    end

    # GET /job/job-id/proposals
    def proposals(job_id, &block)
      response = self.class.get "/jobs/#{job_id}/proposals", options
      yield(response) if block_given?
      response
    end
  end
end
