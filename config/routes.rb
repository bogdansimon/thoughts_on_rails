# frozen_string_literal: true

Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check
  get '/health', to: redirect('/up')

  namespace :api do
    namespace :v1 do
      get 'hello', to: 'hello#index'
    end
  end
end
