# frozen_string_literal: true

require_relative 'response'

module Mealdb
  class Request
    def initialize(base_url:, path:)
      @base_url = base_url
      @path = path
    end

    def get
      result = Excon.get("#{base_url}/#{path}")
      Response.new(result)
    end

    private

    attr_reader :base_url, :path
  end
end
