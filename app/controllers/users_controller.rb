class UsersController < ApplicationController

    def new
	@user = User.new
    end

	private
	def user_params

		params.require (:user).permit(:first_name, :last_name, :email, :password)

	end
end

