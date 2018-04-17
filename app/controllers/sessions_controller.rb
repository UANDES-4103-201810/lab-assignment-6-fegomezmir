class SessionsController < ApplicationController
	def new
	end

	def create
		#complete this method
		session[user_id]=current_user.id
		if @_current_user =
			logged_in = true
			redirect_to root_path
			flash[:notice] = "User logged in"
		end
		else
			redirect_to root_path
			flash[:notice] = "User not logged in"
		end

	def destroy
		#complete this method
		@session = Session.delete

	end
end

	def session_params
		params.require(:sessions).permit(:email, :password)
	end