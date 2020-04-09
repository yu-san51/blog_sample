class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@posts = @user.post_images.page(params[:page]).reverse_order
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
		if @user.save
			redirect_to user_path(@user.id)
		else
			render_to :edit
		end
	end

	def search
		if params[:name].present?
			@users = User.where("name LIKE ?", "%#{params[:name]}%")
		else
			@users = User.none
		end
	end


	private
	def user_params
		params.require(:user).permit(:name, :user_image, :introduction)
	end

end
