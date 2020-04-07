class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@posts = @user.post_images.image_id
	end
	def edit
		
	end
	def update
		
	end
end
