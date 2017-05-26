class SessionsController < ApplicationController
  def new
  end

  def create

    @user = User.find_by_email(params[:email])

    if !@user
      flash[:errors] = ["Invalid Email or Password"]
      redirect_to '/' and return
    end

    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/songs/index' and return
    end

    flash[:errors] = ["Invalid Email of Password"]
    redirect_to '/' and return

  end

  def destroy
    # reset_session ## OR ##
    session[:user_id] = nil
    redirect_to '/'
  end

private
  def login_params
    params.require(:login).permit(:email, :password)
  end

end
