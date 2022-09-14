# frozen_string_literal: true

module Mealdb
  extend ActiveSupport::Concern

  included do
    def client
      Mealdb::Client.new
    end
  end
end
