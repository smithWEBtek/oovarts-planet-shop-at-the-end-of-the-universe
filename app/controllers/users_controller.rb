class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		if current_user
			@user = current_user
      render :show
    else
      flash[:alert] = "You must be logged in to view your profile."
      redirect_to root_path
    end
  end

end
