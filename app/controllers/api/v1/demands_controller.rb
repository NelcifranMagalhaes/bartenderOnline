# frozen_string_literal: true

module Api
  module V1
    class DemandsController < ApplicationController
      skip_before_action :verify_authenticity_token

      def create
        @company = Company.find(params[:id])
        @table = Table.find(params[:table])

        render status: :ok, json: {}
      rescue ActiveRecord::RecordNotFound
        render status: :bad_request, json: {}
      end
    end
  end
end
