class CompaniesController < ApplicationController
  def index
    @companies = Company.all.joins(:logo_attachment)
    render json: @companies.map { |comp| comp.as_json(only: %i[name]).merge(logo_path: url_for(comp.logo)) }
    # @companies = Company.all
    # render json: @companies
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      render json: { company: @company, logo_path: url_for(@company.logo) }
    else
      render json: { error: @companies.errors.full_messages }
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :logo)
  end
end
