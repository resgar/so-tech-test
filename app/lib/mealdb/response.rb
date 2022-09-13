# frozen_string_literal: true

module Mealdb
  class Response
    attr_reader :status

    def initialize(status:, body:)
      @status = status
      @body = body
    end

    def parse
      ActiveSupport::JSON.decode(body) if valid?
    end

    private

    attr_reader :body

    def valid?
      [200, 201].include?(status)
    end
  end
end
