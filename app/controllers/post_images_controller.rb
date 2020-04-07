class PostImagesController < ApplicationController
	def index
		@posts = PostImage.page(params[:page]).reverse_order
	end

	def show
		@post = PostImage.find(params[:id])
	end

	def new
		@post = PostImage.new
	end

	def create
		@post = PostImage.new(post_params)
		@post.user_id = current_user.id
		if @post.save
			redirect_to post_images_path
		else
			render :new
		end
	end

	def edit
		@post = PostImage.find(params[:id])
	end

	def update
		@post = PostImage.find(params[:id])
		if @post.update(post_params)
			redirect_to post_image_path(@post.id)
		else
			render :edit
		end
	end

	def destroy
		@post = PostImage.find(params[:id])
		@post.destroy
		redirect_to post_images_path
	end

	private
	def post_params
		params.require(:post_image).permit(:title, :image, :caption)
	end
end
