class RegistrationsController < ApplicationController
	def new
	
	end

	def create
	    #complete this method
		@user = User.new(user_params)
		if @user.save
			redirect_to "root_path"
			flash[:notice] = "User created"
			@user = User.id
		else
			redirect_to registrations_url
			flash[:notice] = "User not created"


		end
	end
end


def user_params
	params.require(:registrations).permit(:name, :last_name, :email, :password, :phone)
end