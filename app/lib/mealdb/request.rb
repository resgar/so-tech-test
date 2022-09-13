# frozen_string_literal: true

module Mealdb
  class Request
    def initialize(base_url:, path:)
      @base_url = base_url
      @path = path
    end

    def call
      http_response = Excon.get("#{base_url}/#{path}")
      status = http_response[:status]
      body = http_response[:body]
      Response.new(status:, body:)
    end

    private

    attr_reader :base_url, :path
  end
end
