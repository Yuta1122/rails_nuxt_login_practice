class SessionsController < ApplicationController
  def create
    @email = params[:email]
    @password = params[:password]

    user = User.find_by(email: @email)
    
    if user&.authenticate(@password)
      session[:user_id] = user.id
      render status: 200
    else
      render status: 201
    end
  end

end
