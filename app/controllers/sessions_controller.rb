class SessionsController < ApplicationController
  def create
    comp = Company.find_by(email: params[:email])
    if comp&.authenticate(params[:password])
      comp.regenerate_token
      render json: comp
    else
      render json: { error: 'Incorrect email or password' }, status: :unauthorized
    end
  end
end
