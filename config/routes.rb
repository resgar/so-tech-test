# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories, only: :index, defaults: { format: :json } do
    resources :recipes, only: %i[index show], shallow: true
  end
end
