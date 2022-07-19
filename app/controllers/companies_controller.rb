class CompaniesController < ApplicationController
  def index
    @companies = Company.all.joins(:logo_attachment)
    render json: @companies.map { |comp| comp.as_json(only: %i[name]).merge(logo_path: url_for(comp.logo)) }
    # @companies = Company.all
    # render json: @companies
  end
end
