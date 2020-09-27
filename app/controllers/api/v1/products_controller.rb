# frozen_string_literal: true

module Api
  module V1
    class ProductsController < ApplicationController
      def all_products
        @company = Company.find(params[:id])
        if @company.present?
          render status: :ok, json: @company.products
        else
          render status: :bad_request, json: {}
        end
      rescue ActiveRecord::RecordNotFound
        render status: :bad_request, json: {}
      end
    end
  end
end
