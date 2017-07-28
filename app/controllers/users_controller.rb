class UsersController < ApplicationController
	def index
		page = params[:page].to_i > 0 ? params[:page] : 1
		@users = User.all.limit(10).offset((page.to_i-1) * 10)
	end

	def new
		@user = User.new
	end

	def show
		
	end

	def edit
		
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_url
		else
			render :new
		end
	end

	def update
		render :edit
	end

	def destroy
		redirect_to users_url
	end

	private
		def user_params
			params.require(:user).permit(:name, :email)
		end
end
