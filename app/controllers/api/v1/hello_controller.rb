# frozen_string_literal: true

module Api
  module V1
    class HelloController < ApplicationController
      def index
        render json: { message: 'Hello from my tiny space on the web!' }
      end
    end
  end
end
