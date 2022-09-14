# frozen_string_literal: true

class Category < ApplicationRecord
  validates :external_id, uniqueness: true
  validates :name, :external_id, presence: true
end
