class SessionsController < ApplicationController
	def new
		@user = User.new
	end

	def create
	    @user = User.find_by_email(params[:email])
	  if @user && @user.authenticate(params[:password])
	    session[:user_id] = @user.id
	    redirect_to movies_path
	  else
	    flash.now.alert = "Email or Password is invalid"
	    render "login"
	  end
	end

	def destroy
	  session[:user_id] = nil
	  redirect_to root_path
	end
end
