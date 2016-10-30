class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		if user_signed_in?
			@user = User.find(params[:id])
      render :show
    else
      flash[:alert] = "You must be logged in to view profiles."
      redirect_to root_path
    end
  end

end
