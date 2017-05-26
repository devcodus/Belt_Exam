class UsersController < ApplicationController
  def new
  end

  def create
    #Modify register_params method

    @user = User.new(register_params)
    if @user.save && params[:password] == params[:password_confirmation]
      @user.save ##don't need the rest?:> .authorize(password)
      session[:user_id] = @user.id
      redirect_to '/songs/index'
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to :back
    end

  end

  def show
    @user = User.find(params[:id])
    
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

private
  def register_params
    params.require(:register).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  # def update_params
  #   #params.require(:update).permit(:first_name, :last_name, :email, :city, :state)
  # end
end
