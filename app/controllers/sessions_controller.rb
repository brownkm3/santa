class SessionsController < ApplicationController
  def new
  end

  def create username:, password: 
    user = User.find_by(username: params[:sessions][:username])
    if user && user.authenticate(params[:sessions][:password])
      reset_session
      sign_in(user)
      redirect_back_or root_path
    else
      flash.now[:action] = 'Invalid username/password combination'
      render :new
    end
  end

end
