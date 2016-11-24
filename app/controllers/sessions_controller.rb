class SessionsController < ApplicationController

  def new
    render 'new.html.erb'
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.user_id
      flash[:success] = "Successfully logged in!"
      redirect_to '/fruits' #change this redirect later.
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/login'
    end
  end

  def destroy # This is destroying the session.
    session[:user_id] = nil
    flash[:success] = "Successfully logged out!"
    redirect_to '/login'
  end

end
