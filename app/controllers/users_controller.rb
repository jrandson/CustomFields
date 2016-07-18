class UsersController < ApplicationController
  def index
  end

  def new
  	@user = User.new
  end

  def create

  	#debugger
  	@user = User.new(users_params)

  	if @user.save
      flash[:success] = "Welcome to the sample app!"
  		redirect_to @user #user_url(@user)
  	else
  		render 'new'
  	end
  end

  def show
  	@user = User.find(params[:id])
  	#debugger
  end

  private
  	def users_params
  		params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	end

end
