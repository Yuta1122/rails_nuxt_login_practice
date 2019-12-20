class LoginController < ApplicationController
  def index
    name = params[:name]
    email = params[:email]
    # return name
    render json: name, status: 200
  end
end
