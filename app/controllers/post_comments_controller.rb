class PostCommentsController < ApplicationController

	def create
		@post = PostImage.find(params[:post_image_id])
		@post_comment = current_user.post_comments.new(post_comment_params)
		@post_comment.post_image_id = @post.id
		@post_comment.save
		redirect_to post_image_path(@post)
	end

	private
	def post_comment_params
		params.require(:post_comment).permit(:comment)
	end
end
