#!/usr/bin/env ruby
# encoding: utf-8

require 'curb'
require "base64"
require 'uri'

module Elance
  class Authentication
    @@authorize_url = "https://api.elance.com/api2/oauth/authorize"
    @@access_token_url = "https://api.elance.com/api2/oauth/token"

    def initialize(client_id, client_secret)
      @client_id = client_id
      @client_secret = client_secret
      @curl_headers = []
      @response_code = 0
    end

    def request_access_code(client_id, redirect_url)
      @@authorize_url + "?client_id=" + client_id + "&response_type=code&redirect_uri=" + redirect_url
    end

    def init_curl(url)
      c = Curl::Easy.new( url )
      c.set(:ENCODING, 1)
      c.set(:SSL_VERIFYPEER, false)
      c.set(:CAINFO, "/etc/ssl/certs/ca-certificates.crt")
      c
    end

    def get_access_token(client_id, client_secret, auth_code)
      c = self.init_curl( @@access_token_url )
      c.headers['Authorization'] = "Basic "+ Base64.encode64(client_id + ":" + client_secret)
      c.http_post(Curl::PostField.content('code', URI.escape(auth_code)),
                        Curl::PostField.content('grant_type', 'authorization_code'))
      res = c.perform
      ap res
      res
    end

    def exec_request(url, access_token)
      c = self.init_curl( url )
      c.headers['Authorization'] = "Basic "+ access_token
      c.perform
      c.body_str
    end

  end

end
