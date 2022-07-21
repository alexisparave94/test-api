class CompaniesController < ApplicationController
  def index
    @companies = Company.all.joins(:cv_attachment)
    render json: @companies.map { |comp| comp.as_json(only: %i[name]).merge(cv_path: url_for(comp.cv)) }
    # @companies = Company.all
    # render json: @companies
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      render json: { company: @company, cv_path: url_for(@company.cv) }
    else
      render json: { error: @companies.errors.full_messages }
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :cv)
  end
end
