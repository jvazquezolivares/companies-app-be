class Api::V1::CompaniesController < ApplicationController

  def index
    companies = Company.all.includes(:subcompanies).map{ |company| company.json_response }
    if companies.empty?
      render json: { message: "There's no content" }, status: :not_found
    else
      render json: { companies: companies }, status: :ok
    end
  end
end