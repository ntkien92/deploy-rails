class SessionsController < ApplicationController
	def new
	end

	def create
		@user = User.find_by(email: params[:session][:email])
		if @user && @user.authenticate(params[:session][:password])
			10.times do
				UserMailer.welcome_email(@user).deliver_later
			end
			login(@user)
			redirect_to root_path
		else
			render :new
		end
	end
end
