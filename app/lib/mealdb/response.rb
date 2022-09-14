# frozen_string_literal: true

module Mealdb
  class Response
    def initialize(attrs)
      @body = attrs[:body]
      @status = attrs[:status]
    end

    def parse
      ActiveSupport::JSON.decode(body) if valid?
    end

    def valid?
      [200, 201].include?(status)
    end

    private

    attr_reader :body, :status
  end
end
